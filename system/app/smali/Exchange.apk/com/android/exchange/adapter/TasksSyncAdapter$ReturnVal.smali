.class Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;
.super Ljava/lang/Object;
.source "TasksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/TasksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReturnVal"
.end annotation


# instance fields
.field private result:Z

.field final synthetic this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/TasksSyncAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->result:Z

    return-void
.end method


# virtual methods
.method public getVal()Z
    .registers 2

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->result:Z

    return v0
.end method

.method public setVal(Z)V
    .registers 2
    .parameter "val"

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->result:Z

    .line 682
    return-void
.end method
