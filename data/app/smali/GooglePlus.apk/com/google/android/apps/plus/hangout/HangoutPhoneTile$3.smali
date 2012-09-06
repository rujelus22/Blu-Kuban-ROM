.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$3;
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

.field final synthetic val$gCommApp:Lcom/google/android/apps/plus/hangout/GCommApp;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$3;->val$gCommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 551
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$3;->val$gCommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$3;->val$gCommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    .line 555
    return-void

    .line 551
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method
