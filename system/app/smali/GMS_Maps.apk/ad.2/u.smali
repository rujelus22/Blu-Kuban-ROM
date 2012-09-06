.class public Lad/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Date;

.field private final d:Ljava/util/Date;

.field private final e:Lat/B;

.field private final f:Lad/v;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lat/B;Lad/v;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-object p1, p0, Lad/u;->a:Ljava/lang/String;

    .line 631
    iput-object p2, p0, Lad/u;->b:Ljava/lang/String;

    .line 632
    iput-object p3, p0, Lad/u;->c:Ljava/util/Date;

    .line 633
    iput-object p4, p0, Lad/u;->d:Ljava/util/Date;

    .line 634
    iput-object p5, p0, Lad/u;->e:Lat/B;

    .line 635
    iput-object p6, p0, Lad/u;->f:Lad/v;

    .line 636
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lad/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Date;
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lad/u;->c:Ljava/util/Date;

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Lad/u;->d:Ljava/util/Date;

    return-object v0
.end method

.method public d()Lat/B;
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lad/u;->e:Lat/B;

    return-object v0
.end method

.method public e()Lad/v;
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Lad/u;->f:Lad/v;

    return-object v0
.end method
