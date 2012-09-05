.class Lcom/google/android/finsky/services/ContentSyncRequestProducer$2;
.super Ljava/lang/Object;
.source "ContentSyncRequestProducer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/ContentSyncRequestProducer;->getSystemPackages(Landroid/content/pm/PackageManager;)Ljava/util/SortedSet;
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
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/ContentSyncRequestProducer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/ContentSyncRequestProducer;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer$2;->this$0:Lcom/google/android/finsky/services/ContentSyncRequestProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .registers 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 232
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    check-cast p1, Landroid/content/pm/PackageInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/PackageInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/services/ContentSyncRequestProducer$2;->compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method
