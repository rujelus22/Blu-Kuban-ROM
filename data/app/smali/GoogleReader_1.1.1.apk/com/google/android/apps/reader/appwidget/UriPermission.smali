.class final Lcom/google/android/apps/reader/appwidget/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMode:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 4
    .parameter "context"
    .parameter "uri"
    .parameter "mode"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/reader/appwidget/UriPermission;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/android/apps/reader/appwidget/UriPermission;->mUri:Landroid/net/Uri;

    .line 34
    iput p3, p0, Lcom/google/android/apps/reader/appwidget/UriPermission;->mMode:I

    .line 35
    return-void
.end method


# virtual methods
.method public grantToPackage(Ljava/lang/String;)V
    .registers 5
    .parameter "pkg"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/UriPermission;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/reader/appwidget/UriPermission;->mUri:Landroid/net/Uri;

    iget v2, p0, Lcom/google/android/apps/reader/appwidget/UriPermission;->mMode:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 45
    return-void
.end method

.method public grantToUid(I)V
    .registers 7
    .parameter "uid"

    .prologue
    .line 38
    iget-object v4, p0, Lcom/google/android/apps/reader/appwidget/UriPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_c
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    .line 39
    .local v3, pkg:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/appwidget/UriPermission;->grantToPackage(Ljava/lang/String;)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 41
    .end local v3           #pkg:Ljava/lang/String;
    :cond_16
    return-void
.end method

.method public revoke()V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/UriPermission;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/reader/appwidget/UriPermission;->mUri:Landroid/net/Uri;

    iget v2, p0, Lcom/google/android/apps/reader/appwidget/UriPermission;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 49
    return-void
.end method
