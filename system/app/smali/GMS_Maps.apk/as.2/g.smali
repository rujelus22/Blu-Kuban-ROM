.class public LaS/g;
.super LaS/f;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-direct {p0, p1, p3}, LaS/f;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 468
    iput-object p2, p0, LaS/g;->a:Ljava/lang/String;

    .line 469
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, LaS/g;->a:Ljava/lang/String;

    return-object v0
.end method
