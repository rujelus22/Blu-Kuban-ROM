.class public final LOw;
.super Ljava/lang/Object;
.source "OnlineSearch.java"

# interfaces
.implements LOi;


# static fields
.field private static final a:Landroid/net/Uri;


# instance fields
.field private final a:Lcg;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "https://docs.google.com/feeds/default/private/full"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, LOw;->a:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;LOj;LTM;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "null accountName"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LOw;->a:Ljava/lang/String;

    .line 73
    const-string v0, "null query"

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LOw;->b:Ljava/lang/String;

    .line 74
    const-string v0, "null searchListener"

    invoke-static {p3, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "null driver"

    invoke-static {p4, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v0, LOx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background online search: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, LOx;-><init>(LOw;Ljava/lang/String;LOj;Ljava/lang/String;LTM;Ljava/lang/String;)V

    iput-object v0, p0, LOw;->a:Lcg;

    .line 117
    iget-object v0, p0, LOw;->a:Lcg;

    invoke-virtual {v0}, Lcg;->start()V

    .line 118
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 53
    const-string v0, "null query"

    invoke-static {p0, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, LOw;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 55
    const-string v1, "q"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    const-string v1, "showdeleted"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    const-string v1, "showroot"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LOw;)Lcg;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LOw;->a:Lcg;

    return-object v0
.end method

.method private a(LOj;)V
    .registers 4
    .parameter

    .prologue
    .line 121
    const-string v0, "OnlineSearch"

    const-string v1, "Search canceled"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-interface {p1}, LOj;->b()V

    .line 123
    return-void
.end method

.method static synthetic a(LOw;LOj;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, LOw;->a(LOj;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, LOw;->a:Lcg;

    invoke-virtual {v0}, Lcg;->a()V

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 147
    const-string v1, "%sOnlineSearch[account=%s, query=%s]: %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, LOw;->a:Lcg;

    invoke-virtual {v0}, Lcg;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "Canceled "

    :goto_10
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, LOw;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, LOw;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    const-string v0, ""

    goto :goto_10
.end method
