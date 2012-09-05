.class Lcom/sec/android/app/servicemodeapp/BatteryRead$2;
.super Ljava/lang/Object;
.source "BatteryRead.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/BatteryRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/BatteryRead;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/BatteryRead;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead$2;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryRead;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead$2;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryRead;

    #getter for: Lcom/sec/android/app/servicemodeapp/BatteryRead;->mBackButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->access$200(Lcom/sec/android/app/servicemodeapp/BatteryRead;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead$2;->this$0:Lcom/sec/android/app/servicemodeapp/BatteryRead;

    invoke-virtual {v0}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->finish()V

    .line 72
    :cond_d
    return-void
.end method
