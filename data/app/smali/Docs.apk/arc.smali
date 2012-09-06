.class public Larc;
.super Ljava/lang/Object;
.source "ProductSpecificBinaryDataHolder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private a:[B

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Larc;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Larc;->a:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Larc;->a:[B

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Larc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()[B
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Larc;->a:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Larc;->b:Ljava/lang/String;

    return-object v0
.end method
