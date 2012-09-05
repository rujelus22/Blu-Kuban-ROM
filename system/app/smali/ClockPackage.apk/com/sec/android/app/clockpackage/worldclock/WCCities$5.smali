.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$5;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initMapButton()V
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
    .line 700
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$5;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$5;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mShowMapView:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$800(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$5;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mShowMapView:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$800(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$5;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->onGotoMap(Landroid/view/View;)V

    .line 718
    return-void
.end method
