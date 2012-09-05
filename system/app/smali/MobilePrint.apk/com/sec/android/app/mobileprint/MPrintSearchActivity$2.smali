.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$2;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/mobileprint/MPrintPrinterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)I
    .registers 8
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v4, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isTargetNetworkAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    move v0, v2

    .line 143
    .local v0, lhs_ip:I
    :goto_b
    iget-object v4, p2, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isTargetNetworkAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v1, v2

    .line 145
    .local v1, rhs_ip:I
    :goto_14
    if-ge v0, v1, :cond_1b

    .line 150
    :goto_16
    return v2

    .end local v0           #lhs_ip:I
    .end local v1           #rhs_ip:I
    :cond_17
    move v0, v3

    .line 142
    goto :goto_b

    .restart local v0       #lhs_ip:I
    :cond_19
    move v1, v3

    .line 143
    goto :goto_14

    .line 147
    .restart local v1       #rhs_ip:I
    :cond_1b
    if-le v0, v1, :cond_1f

    .line 148
    const/4 v2, -0x1

    goto :goto_16

    :cond_1f
    move v2, v3

    .line 150
    goto :goto_16
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    check-cast p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .end local p1
    check-cast p2, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$2;->compare(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)I

    move-result v0

    return v0
.end method
