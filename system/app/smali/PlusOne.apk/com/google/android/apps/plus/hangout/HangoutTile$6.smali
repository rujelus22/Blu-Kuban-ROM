.class Lcom/google/android/apps/plus/hangout/HangoutTile$6;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;->onTileStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 536
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTile$6;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "button"

    .prologue
    .line 539
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTile$6;->$assertionsDisabled:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eq v0, v1, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 540
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$500(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 541
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$700(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTile;->participants:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$800(Lcom/google/android/apps/plus/hangout/HangoutTile;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V

    .line 543
    return-void
.end method
