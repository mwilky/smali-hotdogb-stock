.class Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/cursoradapter/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/cursoradapter/widget/CursorAdapter;


# direct methods
.method constructor <init>(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    invoke-virtual {v0}, Landroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    invoke-virtual {v0}, Landroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
