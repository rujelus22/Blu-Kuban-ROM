.class Lcom/android/settings/wimax/WimaxEnabler$3;
.super Ljava/lang/Object;
.source "WimaxEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wimax/WimaxEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxEnabler;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler$3;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$3;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->access$1200(Lcom/android/settings/wimax/WimaxEnabler;Z)V

    .line 294
    return-void
.end method
