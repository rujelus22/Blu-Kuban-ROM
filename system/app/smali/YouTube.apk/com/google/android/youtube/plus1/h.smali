.class public final Lcom/google/android/youtube/plus1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Lcom/google/android/plus1/m;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 22
    const-string v0, "https://market.android.com/details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/plus1/h;->a:Landroid/net/Uri;

    .line 24
    const-string v0, "http://www.youtube.com/watch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/plus1/h;->b:Landroid/net/Uri;

    .line 27
    new-instance v0, Lcom/google/android/plus1/m;

    const v1, 0x7f0a0091

    const v2, 0x7f0a008f

    const v3, 0x7f0a0090

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/plus1/m;-><init>(III)V

    sput-object v0, Lcom/google/android/youtube/plus1/h;->c:Lcom/google/android/plus1/m;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 72
    sget-object v0, Lcom/google/android/youtube/plus1/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movie-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 75
    :goto_2b
    return-object v0

    :cond_2c
    sget-object v0, Lcom/google/android/youtube/plus1/h;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "v"

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_2b
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/youtube/plus1/h;->c:Lcom/google/android/plus1/m;

    invoke-static {p0, v0, p1}, Lcom/google/android/plus1/l;->a(Landroid/content/Context;Lcom/google/android/plus1/m;Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    iget-object v0, p1, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    if-nez v0, :cond_19

    move v1, v2

    .line 54
    :goto_7
    if-nez v1, :cond_23

    .line 55
    iget-object v0, p1, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_18
    return-object v0

    .line 53
    :cond_19
    iget-object v0, p1, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    move v1, v0

    goto :goto_7

    .line 55
    :cond_21
    const/4 v0, 0x0

    goto :goto_18

    .line 56
    :cond_23
    if-ne v1, v3, :cond_4b

    .line 57
    iget-object v0, p1, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    new-array v1, v3, [Lcom/google/android/plus1/an;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/plus1/an;

    .line 58
    iget-object v1, p1, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_47

    const v1, 0x7f0a008d

    :goto_3a
    new-array v3, v3, [Ljava/lang/Object;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/google/android/plus1/an;->a:Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_47
    const v1, 0x7f0a007f

    goto :goto_3a

    .line 63
    :cond_4b
    iget-object v0, p1, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_63

    const v0, 0x7f0a008e

    :goto_56
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_63
    const v0, 0x7f0a008c

    goto :goto_56
.end method
