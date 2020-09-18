.class public Lcom/android/settings/applications/ProcStatsData;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcStatsData$MemInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProcStatsManager"

.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

.field private mMemStates:[I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

.field private mStates:[I

.field private mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mUseUss:Z

.field private memTotalTime:J

.field private pkgEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/ProcStatsData$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsData$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    nop

    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStates:[I

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/settings/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    :cond_0
    return-void
.end method

.method private createOsEntry(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v3, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    const-string v5, "os"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    new-instance v3, Lcom/android/settings/applications/ProcStatsEntry;

    const/4 v9, 0x0

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v7, 0x7f12123e

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v13, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    long-to-double v5, v13

    div-double/2addr v7, v5

    double-to-long v4, v7

    const-string v8, "os"

    move-object v7, v3

    move-wide v15, v13

    move-wide v13, v4

    invoke-direct/range {v7 .. v16}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v24, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, v0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move/from16 v25, v6

    invoke-virtual/range {v19 .. v25}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    :cond_0
    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    new-instance v3, Lcom/android/settings/applications/ProcStatsEntry;

    const/4 v6, 0x0

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v5, 0x7f12123c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    iget-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v12, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    long-to-double v10, v12

    div-double/2addr v4, v10

    double-to-long v10, v4

    const-string v5, "os"

    move-object v4, v3

    invoke-direct/range {v4 .. v13}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    iget-object v15, v0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v19, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v5, v0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v20, v5

    invoke-virtual/range {v14 .. v20}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-lez v3, :cond_2

    new-instance v3, Lcom/android/settings/applications/ProcStatsEntry;

    const/4 v6, 0x0

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v5, 0x7f12123b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v12, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    const-wide/16 v4, 0x400

    div-long v10, p4, v4

    const-string v5, "os"

    move-object v4, v3

    move-wide v8, v12

    invoke-direct/range {v4 .. v13}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    iget-object v15, v0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v19, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v5, v0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v20, v5

    invoke-virtual/range {v14 .. v20}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    :cond_2
    return-object v2
.end method

.method private createPkgMap(Ljava/util/ArrayList;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v8, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v9, p0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object v3, v2

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    iget-object v3, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-nez v3, :cond_0

    new-instance v4, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    move-object v3, v4

    iget-object v4, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private distributeZRam(D)V
    .locals 33

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    long-to-double v1, v1

    div-double v1, p1, v1

    double-to-long v1, v1

    const-wide/16 v3, 0x0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_1

    iget-object v6, v0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v7, v6, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_1
    if-ltz v7, :cond_0

    iget-object v8, v6, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v9, v8, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    add-long/2addr v3, v9

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_2
    if-ltz v5, :cond_5

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_5

    iget-object v8, v0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/ProcStatsPackageEntry;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    iget-object v13, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_3
    if-ltz v13, :cond_3

    iget-object v14, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v14, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    add-long/2addr v9, v6

    iget-wide v6, v14, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v6, v6, v11

    if-lez v6, :cond_2

    iget-wide v6, v14, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    move-wide v11, v6

    :cond_2
    add-int/lit8 v13, v13, -0x1

    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_3
    mul-long v6, v1, v9

    div-long/2addr v6, v3

    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-lez v13, :cond_4

    sub-long/2addr v1, v6

    sub-long/2addr v3, v9

    new-instance v13, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v15, v8, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v14, v0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    move-wide/from16 v24, v1

    const v1, 0x7f12123f

    invoke-virtual {v14, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    iget-wide v1, v0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    move-object v14, v13

    move-wide/from16 v18, v11

    move-wide/from16 v20, v6

    move-wide/from16 v22, v1

    invoke-direct/range {v14 .. v23}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    move-object v1, v13

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v13, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v29, 0x0

    const/16 v30, 0x0

    sget-object v31, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v14, v0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v13

    move/from16 v32, v14

    invoke-virtual/range {v26 .. v32}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    invoke-virtual {v8, v1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V

    move-wide/from16 v1, v24

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private getProcs(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    :goto_0
    const-string v5, "/"

    const-string v6, "ProcStatsManager"

    if-ge v3, v4, :cond_6

    iget-object v7, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    invoke-virtual {v9, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    const/4 v12, 0x0

    :goto_3
    iget-object v13, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    iget-object v13, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v14, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v4

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v4

    invoke-virtual {v14, v15, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v4, :cond_0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No process found for pkg "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " proc name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    goto :goto_4

    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v15

    invoke-virtual {v2, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/ProcStatsEntry;

    if-nez v14, :cond_1

    new-instance v15, Lcom/android/settings/applications/ProcStatsEntry;

    move-object/from16 v23, v7

    iget-object v7, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v9

    iget-boolean v9, v0, Lcom/android/settings/applications/ProcStatsData;->mUseUss:Z

    move-object/from16 v17, v15

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v22, v9

    invoke-direct/range {v17 .. v22}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Z)V

    move-object v7, v15

    iget-wide v14, v7, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/16 v17, 0x0

    cmpl-double v9, v14, v17

    if-lez v9, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v14

    invoke-virtual {v2, v9, v14, v7}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    move-object/from16 v23, v7

    move-object/from16 v24, v9

    iget-object v7, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Lcom/android/settings/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    :cond_2
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v16

    move-object/from16 v7, v23

    move-object/from16 v9, v24

    goto/16 :goto_3

    :cond_3
    move/from16 v16, v4

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_4
    move/from16 v16, v4

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_5
    move/from16 v16, v4

    move-object/from16 v23, v7

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v16, v4

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    :goto_5
    if-ge v3, v4, :cond_c

    iget-object v7, v0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    invoke-virtual {v9, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    const/4 v12, 0x0

    iget-object v13, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    :goto_8
    if-ge v12, v13, :cond_9

    iget-object v14, v11, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v2, v15, v0}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v14}, Lcom/android/settings/applications/ProcStatsEntry;->addService(Lcom/android/internal/app/procstats/ServiceState;)V

    goto :goto_9

    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "No process "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for service "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_8

    :cond_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    :cond_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_6

    :cond_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_c
    return-object v1
.end method

.method private load()V
    .locals 5

    const-string v0, "ProcStatsManager"

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/procstats/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading process stats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "RemoteException:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    return-wide v0
.end method

.method public getElapsedTime()J
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    return-object v0
.end method

.method public getMemState()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x4

    :cond_1
    return v0
.end method

.method public refreshStats(Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcStatsData;->load()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide v7, v9

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v1, v0, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    new-instance v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    const/4 v8, 0x0

    move-object v3, v1

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings/applications/ProcStatsData$1;)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->mStates:[I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ProcStatsData;->getProcs(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings/applications/ProcStatsData;->createPkgMap(Ljava/util/ArrayList;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    iget-boolean v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-nez v3, :cond_2

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/ProcStatsData;->distributeZRam(D)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsData;->mMemInfo:Lcom/android/settings/applications/ProcStatsData$MemInfo;

    iget-wide v7, v3, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    move-object v3, p0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/applications/ProcStatsData;->createOsEntry(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDuration(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsData;->mDuration:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    :cond_0
    return-void
.end method

.method public setMemStates([I)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mMemStates:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    return-void
.end method

.method public setStats([I)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsData;->mStates:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    return-void
.end method

.method public setTotalTime(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData;->memTotalTime:J

    return-void
.end method

.method public xferStats()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;

    return-void
.end method
