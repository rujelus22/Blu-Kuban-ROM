.class Lcom/sec/android/app/music/common/util/DrmPopup$4;
.super Ljava/lang/Object;
.source "DrmPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/util/DrmPopup;->onCreateDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/util/DrmPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/util/DrmPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/DrmPopup$4;->this$0:Lcom/sec/android/app/music/common/util/DrmPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmPopup$4;->this$0:Lcom/sec/android/app/music/common/util/DrmPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/DrmPopup;->finish()V

    .line 85
    return-void
.end method
