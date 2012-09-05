.class Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader$1;
.super Ljava/lang/Object;
.source "PeopleNotInCirclesLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;->buildSortedMatrixCursor(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;

.field final synthetic val$nameColumnIndex:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader$1;->this$0:Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;

    iput p2, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader$1;->val$nameColumnIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader$1;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 6
    .parameter "row1"
    .parameter "row2"

    .prologue
    .line 146
    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader$1;->val$nameColumnIndex:I

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, name1:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 148
    const-string v0, ""

    .line 150
    :cond_a
    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader$1;->val$nameColumnIndex:I

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, name2:Ljava/lang/String;
    if-nez v1, :cond_14

    .line 152
    const-string v1, ""

    .line 154
    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
