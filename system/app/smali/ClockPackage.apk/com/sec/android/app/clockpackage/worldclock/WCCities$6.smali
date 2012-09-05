.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$6;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initIndexScrollView()V
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
    .line 860
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$6;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .registers 3
    .parameter "positionOfData"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$6;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$900(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 868
    return-void
.end method
