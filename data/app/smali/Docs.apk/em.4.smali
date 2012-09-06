.class public Lem;
.super Ljava/lang/Object;
.source "DocListConfiguration.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lem;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lem;->b:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lem;->b:Ljava/lang/String;

    return-object v0
.end method
