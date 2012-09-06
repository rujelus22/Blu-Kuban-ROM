.class Lcom/google/android/apps/plus/views/ColumnGridView$1;
.super Ljava/lang/Object;
.source "ColumnGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ColumnGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/ColumnGridView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/ColumnGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$1;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$1;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mPressed:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$302(Lcom/google/android/apps/plus/views/ColumnGridView;Z)Z

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$1;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidate()V

    .line 201
    return-void
.end method
