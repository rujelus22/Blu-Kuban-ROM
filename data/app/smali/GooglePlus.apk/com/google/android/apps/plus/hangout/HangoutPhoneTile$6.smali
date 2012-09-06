.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$6;
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
    .line 582
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "button"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$6;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 587
    return-void
.end method
