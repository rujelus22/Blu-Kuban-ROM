.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$1;
.super Ljava/lang/Object;
.source "HangoutPhoneTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->onTileStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 2
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 531
    return-void
.end method
