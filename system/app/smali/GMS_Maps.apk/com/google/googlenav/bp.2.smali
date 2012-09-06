.class public Lcom/google/googlenav/bP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    iput-object p1, p0, Lcom/google/googlenav/bP;->a:Ljava/lang/String;

    .line 1091
    iput-boolean p2, p0, Lcom/google/googlenav/bP;->b:Z

    .line 1092
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/google/googlenav/bP;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/google/googlenav/bP;->b:Z

    return v0
.end method
