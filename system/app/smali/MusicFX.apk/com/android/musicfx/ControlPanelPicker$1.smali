.class Lcom/android/musicfx/ControlPanelPicker$1;
.super Ljava/lang/Object;
.source "ControlPanelPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicfx/ControlPanelPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicfx/ControlPanelPicker;


# direct methods
.method constructor <init>(Lcom/android/musicfx/ControlPanelPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/musicfx/ControlPanelPicker$1;->this$0:Lcom/android/musicfx/ControlPanelPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/musicfx/ControlPanelPicker$1;->this$0:Lcom/android/musicfx/ControlPanelPicker;

    iput p2, v0, Lcom/android/musicfx/ControlPanelPicker;->mClickedPos:I

    .line 101
    return-void
.end method
