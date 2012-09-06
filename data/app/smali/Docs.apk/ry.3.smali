.class public Lry;
.super Ljava/lang/Object;
.source "UrlInformationImpl.java"

# interfaces
.implements LrA;


# instance fields
.field private final a:LLC;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LLC;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lry;->b:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lry;->a:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lry;->a:LLC;

    .line 22
    return-void
.end method


# virtual methods
.method public a()LLC;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lry;->a:LLC;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lry;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lry;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41
    const-string v0, "UrlInformation[title=%s, url=%s, result=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lry;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lry;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lry;->a:LLC;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
