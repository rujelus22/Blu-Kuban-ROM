.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

.field final synthetic val$box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;

.field final synthetic val$myPosition:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1;->this$1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1;->val$box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;

    iput p3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1;->val$myPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1;->val$box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;

    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->post(Ljava/lang/Runnable;)Z

    .line 1383
    return-void
.end method
