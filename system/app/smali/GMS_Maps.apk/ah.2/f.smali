.class public LaH/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lat/B;

.field private final b:Ljava/lang/String;

.field private final c:Lat/B;

.field private final d:Lat/B;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lat/B;Lat/B;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, LaH/f;->a:Lat/B;

    .line 54
    iput-object p2, p0, LaH/f;->b:Ljava/lang/String;

    .line 55
    iput-object p3, p0, LaH/f;->e:Ljava/lang/String;

    .line 56
    iput-object p4, p0, LaH/f;->f:Ljava/lang/String;

    .line 57
    iput-object p5, p0, LaH/f;->d:Lat/B;

    .line 58
    iput-object p6, p0, LaH/f;->c:Lat/B;

    .line 59
    return-void
.end method


# virtual methods
.method public a()Lat/B;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, LaH/f;->a:Lat/B;

    return-object v0
.end method

.method public b()Lat/B;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, LaH/f;->d:Lat/B;

    return-object v0
.end method

.method public c()Lat/B;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, LaH/f;->c:Lat/B;

    return-object v0
.end method
