.class public final Lcom/google/android/ytremote/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/ytremote/b/d;

.field public static b:Lcom/google/android/ytremote/b/d;


# instance fields
.field private final c:I

.field private final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/google/android/ytremote/b/d;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/b/d;-><init>(ILandroid/net/Uri;)V

    sput-object v0, Lcom/google/android/ytremote/b/d;->a:Lcom/google/android/ytremote/b/d;

    .line 35
    new-instance v0, Lcom/google/android/ytremote/b/d;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/b/d;-><init>(ILandroid/net/Uri;)V

    sput-object v0, Lcom/google/android/ytremote/b/d;->b:Lcom/google/android/ytremote/b/d;

    .line 32
    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/google/android/ytremote/b/d;->c:I

    .line 42
    iput-object p2, p0, Lcom/google/android/ytremote/b/d;->d:Landroid/net/Uri;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/ytremote/b/d;->c:I

    return v0
.end method

.method public final b()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/ytremote/b/d;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p0, p1, :cond_5

    .line 84
    :cond_4
    :goto_4
    return v0

    .line 67
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 68
    goto :goto_4

    .line 70
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 71
    goto :goto_4

    .line 73
    :cond_15
    check-cast p1, Lcom/google/android/ytremote/b/d;

    .line 74
    iget-object v2, p0, Lcom/google/android/ytremote/b/d;->d:Landroid/net/Uri;

    if-nez v2, :cond_21

    .line 75
    iget-object v2, p1, Lcom/google/android/ytremote/b/d;->d:Landroid/net/Uri;

    if-eqz v2, :cond_2d

    move v0, v1

    .line 76
    goto :goto_4

    .line 78
    :cond_21
    iget-object v2, p0, Lcom/google/android/ytremote/b/d;->d:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/ytremote/b/d;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    .line 79
    goto :goto_4

    .line 81
    :cond_2d
    iget v2, p0, Lcom/google/android/ytremote/b/d;->c:I

    iget v3, p1, Lcom/google/android/ytremote/b/d;->c:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 82
    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/ytremote/b/d;->d:Landroid/net/Uri;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/ytremote/b/d;->c:I

    add-int/2addr v0, v1

    .line 59
    return v0

    .line 55
    :cond_d
    iget-object v0, p0, Lcom/google/android/ytremote/b/d;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_5
.end method
