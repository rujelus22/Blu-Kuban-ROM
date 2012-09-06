.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$7;
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
    .line 591
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$7;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "button"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$7;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->onExit(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1400(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Landroid/view/View;)V

    .line 595
    return-void
.end method
