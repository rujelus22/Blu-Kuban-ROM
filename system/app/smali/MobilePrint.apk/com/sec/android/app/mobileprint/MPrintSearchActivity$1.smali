.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$1;
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
        "Landroid/text/Spanned;",
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
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/text/Spanned;Landroid/text/Spanned;)I
    .registers 13
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, a:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, b:Ljava/lang/String;
    const-string v8, "("

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, aa:Ljava/lang/String;
    const-string v8, "("

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, bb:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isTargetNetworkAvailable(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3f

    move v2, v6

    .line 126
    .local v2, arg0_ip:I
    :goto_35
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isTargetNetworkAvailable(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_41

    move v3, v6

    .line 128
    .local v3, arg1_ip:I
    :goto_3c
    if-ge v2, v3, :cond_43

    .line 133
    :goto_3e
    return v6

    .end local v2           #arg0_ip:I
    .end local v3           #arg1_ip:I
    :cond_3f
    move v2, v7

    .line 125
    goto :goto_35

    .restart local v2       #arg0_ip:I
    :cond_41
    move v3, v7

    .line 126
    goto :goto_3c

    .line 130
    .restart local v3       #arg1_ip:I
    :cond_43
    if-le v2, v3, :cond_47

    .line 131
    const/4 v6, -0x1

    goto :goto_3e

    :cond_47
    move v6, v7

    .line 133
    goto :goto_3e
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    check-cast p1, Landroid/text/Spanned;

    .end local p1
    check-cast p2, Landroid/text/Spanned;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$1;->compare(Landroid/text/Spanned;Landroid/text/Spanned;)I

    move-result v0

    return v0
.end method
