.class public Lcom/google/googlenav/ui/friend/E;
.super Lcom/google/googlenav/ui/ag;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/googlenav/ui/ag;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/googlenav/ui/friend/E;->a:Ljava/lang/Long;

    .line 98
    iput p2, p0, Lcom/google/googlenav/ui/friend/E;->b:I

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/friend/E;)Ljava/lang/Long;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/E;->a:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/E;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/google/googlenav/ui/friend/E;->b:I

    return v0
.end method
