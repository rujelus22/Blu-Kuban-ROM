.class Lcom/google/android/apps/plus/hangout/HangoutTabletTile$8;
.super Ljava/lang/Object;
.source "HangoutTabletTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->registerInteractionHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 2
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2700(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_f

    .line 775
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->toggleActionBar()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1600(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 777
    :cond_f
    return-void
.end method
