.class public Ln/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln/ad;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ln/ad;

    iget-object v1, p0, Ln/ae;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ln/ad;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ln/ae;
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Ln/ae;->a:Ljava/lang/String;

    .line 91
    return-object p0
.end method
