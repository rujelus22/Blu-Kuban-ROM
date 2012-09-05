.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$4;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$4;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$4;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->button:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$400(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 690
    return-void
.end method
