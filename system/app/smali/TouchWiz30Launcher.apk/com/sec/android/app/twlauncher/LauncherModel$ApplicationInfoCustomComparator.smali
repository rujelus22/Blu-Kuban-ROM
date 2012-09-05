.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;
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
    name = "ApplicationInfoCustomComparator"
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


# instance fields
.field private mMode:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    .line 1111
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 1114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    .line 1115
    iput p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    .line 1116
    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .registers 11
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v7, -0x1

    .line 1121
    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a

    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    if-nez v5, :cond_20

    .line 1122
    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v2

    .line 1123
    .local v2, pageA:I
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v0

    .line 1124
    .local v0, cellA:I
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v3

    .line 1125
    .local v3, pageB:I
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v1

    .line 1134
    .local v1, cellB:I
    :goto_1a
    if-ne v2, v7, :cond_31

    if-eq v3, v7, :cond_31

    .line 1135
    const/4 v4, 0x1

    .line 1147
    .local v4, ret:I
    :cond_1f
    :goto_1f
    return v4

    .line 1128
    .end local v0           #cellA:I
    .end local v1           #cellB:I
    .end local v2           #pageA:I
    .end local v3           #pageB:I
    .end local v4           #ret:I
    :cond_20
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v2

    .line 1129
    .restart local v2       #pageA:I
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v0

    .line 1130
    .restart local v0       #cellA:I
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v3

    .line 1131
    .restart local v3       #pageB:I
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v1

    .restart local v1       #cellB:I
    goto :goto_1a

    .line 1136
    :cond_31
    if-eq v2, v7, :cond_37

    if-ne v3, v7, :cond_37

    .line 1137
    const/4 v4, -0x1

    .restart local v4       #ret:I
    goto :goto_1f

    .line 1139
    .end local v4           #ret:I
    :cond_37
    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->integerCompare(II)I
    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1300(II)I

    move-result v4

    .line 1140
    .restart local v4       #ret:I
    if-nez v4, :cond_1f

    .line 1141
    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->integerCompare(II)I
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1300(II)I

    move-result v4

    .line 1143
    if-nez v4, :cond_1f

    .line 1144
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200()Ljava/text/Collator;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1f
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
