.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;
.super Landroid/database/DataSetObserver;
.source "HangoutRingingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->updateCircleNames()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1000(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    .line 583
    return-void
.end method
