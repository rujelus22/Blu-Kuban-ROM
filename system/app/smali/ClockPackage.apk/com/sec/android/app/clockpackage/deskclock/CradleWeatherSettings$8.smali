.class Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$8;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$8;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$8;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->removeDialog(I)V

    .line 500
    return-void
.end method
