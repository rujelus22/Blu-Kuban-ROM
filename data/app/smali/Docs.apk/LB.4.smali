.class LLB;
.super Ljava/lang/Object;
.source "UrlParserImpl.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/regex/Pattern;

.field private final a:LkU;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;LkU;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, LLB;->a:Ljava/util/regex/Pattern;

    .line 51
    iput-object p3, p0, LLB;->a:LkU;

    .line 52
    iput-object p2, p0, LLB;->a:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic a(LLB;)LkU;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, LLB;->a:LkU;

    return-object v0
.end method


# virtual methods
.method a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p2}, LLB;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 61
    iget-object v0, p0, LLB;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, LLB;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
