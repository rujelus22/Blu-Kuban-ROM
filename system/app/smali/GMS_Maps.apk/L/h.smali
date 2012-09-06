.class Ll/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/i;


# instance fields
.field final synthetic a:Ll/g;


# direct methods
.method constructor <init>(Ll/g;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Ll/h;->a:Ll/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ll/e;
    .registers 2

    .prologue
    .line 159
    new-instance v0, Ll/w;

    invoke-direct {v0}, Ll/w;-><init>()V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ll/e;
    .registers 3
    .parameter

    .prologue
    .line 164
    new-instance v0, Ll/t;

    invoke-direct {v0, p1}, Ll/t;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
