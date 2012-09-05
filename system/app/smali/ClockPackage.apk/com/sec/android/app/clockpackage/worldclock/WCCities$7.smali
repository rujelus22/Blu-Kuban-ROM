.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$7;
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
    .line 877
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$7;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .registers 8
    .parameter "positionOfData"

    .prologue
    .line 885
    rsub-int/lit8 v4, p1, 0xd

    const v5, 0x36ee80

    mul-int v2, v4, v5

    .line 887
    .local v2, index:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$7;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$900(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 889
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_32

    .line 891
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$7;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$900(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 893
    .local v3, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getRawoffset()I

    move-result v4

    if-eq v4, v2, :cond_29

    .line 889
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 899
    :cond_29
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$7;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$900(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 905
    .end local v3           #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    :cond_32
    return-void
.end method
