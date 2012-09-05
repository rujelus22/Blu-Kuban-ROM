.class public final Lcom/google/android/youtube/app/ui/bw;
.super Lcom/google/android/youtube/core/ui/k;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/youtube/core/utils/l;

.field public static final b:Lcom/google/android/youtube/core/utils/l;


# instance fields
.field private final e:Lcom/google/android/youtube/core/client/ad;

.field private final f:Lcom/google/android/youtube/core/client/af;

.field private final g:Lcom/google/android/youtube/core/async/a;

.field private final h:Lcom/google/android/youtube/core/async/a;

.field private final i:Lcom/google/android/youtube/app/a/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/youtube/app/ui/bx;

    invoke-direct {v0}, Lcom/google/android/youtube/app/ui/bx;-><init>()V

    sput-object v0, Lcom/google/android/youtube/app/ui/bw;->a:Lcom/google/android/youtube/core/utils/l;

    .line 41
    new-instance v0, Lcom/google/android/youtube/app/ui/by;

    invoke-direct {v0}, Lcom/google/android/youtube/app/ui/by;-><init>()V

    sput-object v0, Lcom/google/android/youtube/app/ui/bw;->b:Lcom/google/android/youtube/core/utils/l;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/s;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/client/af;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-interface {p4}, Lcom/google/android/youtube/core/client/ad;->u()Lcom/google/android/youtube/core/async/ad;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/k;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/e;)V

    .line 63
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/bw;->e:Lcom/google/android/youtube/core/client/ad;

    .line 64
    iput-object p6, p0, Lcom/google/android/youtube/app/ui/bw;->f:Lcom/google/android/youtube/core/client/af;

    .line 65
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/bw;->i:Lcom/google/android/youtube/app/a/s;

    .line 66
    new-instance v0, Lcom/google/android/youtube/app/ui/cc;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/cc;-><init>(Lcom/google/android/youtube/app/ui/bw;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bw;->g:Lcom/google/android/youtube/core/async/a;

    .line 67
    new-instance v0, Lcom/google/android/youtube/app/ui/cb;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/cb;-><init>(Lcom/google/android/youtube/app/ui/bw;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bw;->h:Lcom/google/android/youtube/core/async/a;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/bw;)Lcom/google/android/youtube/app/a/s;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bw;->i:Lcom/google/android/youtube/app/a/s;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/bw;)Lcom/google/android/youtube/core/async/a;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bw;->h:Lcom/google/android/youtube/core/async/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/bw;)Lcom/google/android/youtube/core/client/af;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bw;->f:Lcom/google/android/youtube/core/client/af;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/bw;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bw;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/model/Subscription;

    .line 73
    invoke-virtual {v5}, Lcom/google/android/youtube/core/model/Subscription;->isUserRelated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, v5, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bw;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bw;->e:Lcom/google/android/youtube/core/client/ad;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bw;->g:Lcom/google/android/youtube/core/async/a;

    invoke-interface {v2, v0, v3}, Lcom/google/android/youtube/core/client/ad;->e(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    .line 78
    sget-object v2, Lcom/google/android/youtube/app/ui/bz;->a:[I

    iget-object v3, v5, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_60

    goto :goto_4

    .line 80
    :pswitch_33
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    .line 81
    new-instance v0, Lcom/google/android/youtube/app/ui/ca;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bw;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->j()Lcom/google/android/youtube/core/async/ad;

    move-result-object v2

    sget-object v4, Lcom/google/android/youtube/app/ui/bw;->a:Lcom/google/android/youtube/core/utils/l;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/ca;-><init>(Lcom/google/android/youtube/app/ui/bw;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/utils/l;Lcom/google/android/youtube/core/model/Subscription;)V

    .line 86
    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ca;->a()V

    goto :goto_4

    .line 89
    :pswitch_49
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    .line 90
    new-instance v0, Lcom/google/android/youtube/app/ui/ca;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bw;->e:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->h()Lcom/google/android/youtube/core/async/ad;

    move-result-object v2

    sget-object v4, Lcom/google/android/youtube/app/ui/bw;->b:Lcom/google/android/youtube/core/utils/l;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/ca;-><init>(Lcom/google/android/youtube/app/ui/bw;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/utils/l;Lcom/google/android/youtube/core/model/Subscription;)V

    .line 95
    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ca;->a()V

    goto :goto_4

    .line 103
    :cond_5f
    return-void

    .line 78
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_33
        :pswitch_49
    .end packed-switch
.end method
