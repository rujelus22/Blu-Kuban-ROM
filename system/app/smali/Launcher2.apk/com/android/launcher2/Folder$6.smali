.class Lcom/android/launcher2/Folder$6;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .registers 2
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher2/Alarm;)V
    .registers 5
    .parameter "alarm"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mEmptyCell:[I
    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$600(Lcom/android/launcher2/Folder;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mTargetCell:[I
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$700(Lcom/android/launcher2/Folder;)[I

    move-result-object v2

    #calls: Lcom/android/launcher2/Folder;->realTimeReorder([I[I)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Folder;->access$800(Lcom/android/launcher2/Folder;[I[I)V

    .line 570
    return-void
.end method
