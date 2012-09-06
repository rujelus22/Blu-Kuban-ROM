.class public LaC/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, LaC/O;->a:I

    .line 53
    iput-object p2, p0, LaC/O;->b:Ljava/lang/String;

    .line 54
    iput-object p3, p0, LaC/O;->c:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, LaC/O;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, LaC/O;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, LaC/O;->c:Ljava/lang/String;

    return-object v0
.end method
