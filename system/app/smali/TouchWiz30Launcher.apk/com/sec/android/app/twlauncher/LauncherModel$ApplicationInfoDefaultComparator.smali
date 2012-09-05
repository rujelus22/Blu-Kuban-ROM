.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationInfoDefaultComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1071
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .registers 10
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1078
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getDefaultSort()I

    move-result v1

    .line 1079
    .local v1, sortA:I
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getDefaultSort()I

    move-result v2

    .line 1080
    .local v2, sortB:I
    if-nez v1, :cond_e

    if-eqz v2, :cond_e

    .line 1081
    const/4 v0, 0x1

    .line 1094
    .local v0, ret:I
    :cond_d
    :goto_d
    return v0

    .line 1082
    .end local v0           #ret:I
    :cond_e
    if-eqz v1, :cond_14

    if-nez v2, :cond_14

    .line 1083
    const/4 v0, -0x1

    .restart local v0       #ret:I
    goto :goto_d

    .line 1085
    .end local v0           #ret:I
    :cond_14
    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->integerCompare(II)I
    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1300(II)I

    move-result v0

    .line 1087
    .restart local v0       #ret:I
    if-nez v0, :cond_d

    .line 1088
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCreateTime()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCreateTime()J

    move-result-wide v5

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->longCompare(JJ)I
    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1400(JJ)I

    move-result v0

    .line 1090
    if-nez v0, :cond_d

    .line 1091
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1071
    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;->compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
