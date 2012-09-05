.class Lcom/google/android/apps/plus/hangout/HangoutTile$4;
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


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$4;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "button"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$4;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onExit(Landroid/view/View;)V

    .line 512
    return-void
.end method
