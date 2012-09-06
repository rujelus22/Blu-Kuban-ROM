.class public LLC;
.super Ljava/lang/Object;
.source "UrlParserResult.java"


# instance fields
.field private final a:Landroid/content/Intent;

.field private final a:Ljava/lang/String;

.field private final a:LkU;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;LkU;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, LLC;->a:Landroid/content/Intent;

    .line 28
    iput-object p2, p0, LLC;->a:Ljava/lang/String;

    .line 29
    iput-object p3, p0, LLC;->a:LkU;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, LLC;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, LLC;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()LkU;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, LLC;->a:LkU;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 46
    const-string v0, "UrlParserResult [kind=%s, resourceId=%s, intent=%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LLC;->a:LkU;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LLC;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, LLC;->a:Landroid/content/Intent;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
