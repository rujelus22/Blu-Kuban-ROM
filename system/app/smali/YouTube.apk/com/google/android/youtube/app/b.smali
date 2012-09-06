.class public final Lcom/google/android/youtube/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# static fields
.field private static final a:Lcom/google/android/youtube/app/adapter/bu;

.field private static final b:Lcom/google/android/youtube/app/adapter/bu;

.field private static final c:Lcom/google/android/youtube/app/adapter/bu;

.field private static final d:Lcom/google/android/youtube/app/adapter/bu;

.field private static final e:Lcom/google/android/youtube/app/adapter/bu;


# instance fields
.field private final f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private final g:Lcom/google/android/youtube/core/async/ar;

.field private final h:Lcom/google/android/youtube/core/async/ar;

.field private final i:Lcom/google/android/youtube/core/async/ar;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/util/concurrent/ConcurrentHashMap;

.field private final l:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/youtube/app/adapter/bu;

    const v1, 0x7f0b0115

    sget-object v2, Lcom/google/android/youtube/app/m;->y:Lcom/google/android/youtube/core/b/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/bu;-><init>(ILcom/google/android/youtube/core/b/aj;)V

    sput-object v0, Lcom/google/android/youtube/app/b;->a:Lcom/google/android/youtube/app/adapter/bu;

    .line 43
    new-instance v0, Lcom/google/android/youtube/app/adapter/bu;

    const v1, 0x7f0b0118

    sget-object v2, Lcom/google/android/youtube/app/m;->w:Lcom/google/android/youtube/core/b/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/bu;-><init>(ILcom/google/android/youtube/core/b/aj;)V

    sput-object v0, Lcom/google/android/youtube/app/b;->b:Lcom/google/android/youtube/app/adapter/bu;

    .line 45
    new-instance v0, Lcom/google/android/youtube/app/adapter/bu;

    const v1, 0x7f0b0119

    sget-object v2, Lcom/google/android/youtube/app/m;->x:Lcom/google/android/youtube/core/b/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/bu;-><init>(ILcom/google/android/youtube/core/b/aj;)V

    sput-object v0, Lcom/google/android/youtube/app/b;->c:Lcom/google/android/youtube/app/adapter/bu;

    .line 47
    new-instance v0, Lcom/google/android/youtube/app/adapter/bu;

    const v1, 0x7f0b0116

    sget-object v2, Lcom/google/android/youtube/app/m;->A:Lcom/google/android/youtube/core/b/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/bu;-><init>(ILcom/google/android/youtube/core/b/aj;)V

    sput-object v0, Lcom/google/android/youtube/app/b;->d:Lcom/google/android/youtube/app/adapter/bu;

    .line 49
    new-instance v0, Lcom/google/android/youtube/app/adapter/bu;

    const v1, 0x7f0b0117

    sget-object v2, Lcom/google/android/youtube/app/m;->v:Lcom/google/android/youtube/core/b/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/bu;-><init>(ILcom/google/android/youtube/core/b/aj;)V

    sput-object v0, Lcom/google/android/youtube/app/b;->e:Lcom/google/android/youtube/app/adapter/bu;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/b/ae;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-interface {p1}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iput-object v0, p0, Lcom/google/android/youtube/app/b;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 66
    invoke-interface {p1}, Lcom/google/android/youtube/core/b/ae;->i()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/app/b;->g:Lcom/google/android/youtube/core/async/ar;

    .line 68
    invoke-interface {p1}, Lcom/google/android/youtube/core/b/ae;->r()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/app/b;->h:Lcom/google/android/youtube/core/async/ar;

    .line 70
    invoke-interface {p1}, Lcom/google/android/youtube/core/b/ae;->s()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/app/b;->i:Lcom/google/android/youtube/core/async/ar;

    .line 72
    iput-object p2, p0, Lcom/google/android/youtube/app/b;->j:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    const-string v0, "users/([^/]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/b;->l:Ljava/util/regex/Pattern;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/b;Lcom/google/android/youtube/core/async/GDataRequest;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->l:Ljava/util/regex/Pattern;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic a(Lcom/google/android/youtube/app/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/b;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/l;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/b;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/l;Lcom/google/android/youtube/core/model/UserAuth;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/l;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 104
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->k(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v6

    .line 108
    sget-object v0, Lcom/google/android/youtube/app/b;->a:Lcom/google/android/youtube/app/adapter/bu;

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/b;->j:Ljava/lang/String;

    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v7

    .line 112
    sget-object v0, Lcom/google/android/youtube/app/b;->b:Lcom/google/android/youtube/app/adapter/bu;

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/b;->j:Ljava/lang/String;

    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v8

    .line 116
    sget-object v0, Lcom/google/android/youtube/app/b;->c:Lcom/google/android/youtube/app/adapter/bu;

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Lcom/google/android/youtube/app/c;

    const v5, 0x7fffffff

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/c;-><init>(Lcom/google/android/youtube/app/b;Lcom/google/android/youtube/core/async/l;Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/HashMap;I)V

    .line 121
    iget-object v1, p0, Lcom/google/android/youtube/app/b;->i:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v1, v6, v0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 122
    iget-object v1, p0, Lcom/google/android/youtube/app/b;->g:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v1, v7, v0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 123
    iget-object v1, p0, Lcom/google/android/youtube/app/b;->g:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v1, v8, v0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 124
    return-void
.end method

.method static synthetic b()Lcom/google/android/youtube/app/adapter/bu;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/youtube/app/b;->d:Lcom/google/android/youtube/app/adapter/bu;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->k:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    move-object v3, p1

    .line 37
    check-cast v3, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, v3, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_56

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/youtube/app/b;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->RECENTLY_FEATURED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v8, v2, v8}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v6

    sget-object v0, Lcom/google/android/youtube/app/b;->e:Lcom/google/android/youtube/app/adapter/bu;

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/b;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/b;->j:Ljava/lang/String;

    sget-object v5, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v0, v1, v8, v2, v5}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v7

    sget-object v0, Lcom/google/android/youtube/app/b;->b:Lcom/google/android/youtube/app/adapter/bu;

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/b;->f:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/b;->j:Ljava/lang/String;

    sget-object v5, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v0, v1, v8, v2, v5}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v8

    sget-object v0, Lcom/google/android/youtube/app/b;->c:Lcom/google/android/youtube/app/adapter/bu;

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/youtube/app/c;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/c;-><init>(Lcom/google/android/youtube/app/b;Lcom/google/android/youtube/core/async/l;Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/HashMap;I)V

    iget-object v1, p0, Lcom/google/android/youtube/app/b;->g:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v1, v6, v0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/b;->g:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v1, v7, v0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/b;->g:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v1, v8, v0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    :goto_55
    return-void

    :cond_56
    iget-object v0, v3, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/myfeed/users/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/google/android/youtube/app/b;->h:Lcom/google/android/youtube/core/async/ar;

    new-instance v1, Lcom/google/android/youtube/app/d;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/app/d;-><init>(Lcom/google/android/youtube/app/b;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, v3, v1}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_55

    :cond_6f
    iget-object v0, v3, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-direct {p0, v3, p2, v0}, Lcom/google/android/youtube/app/b;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/l;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_55
.end method
