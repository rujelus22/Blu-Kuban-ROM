.class final LBE;
.super Ljava/lang/Object;
.source "XmlHttpRequestRelay.java"


# instance fields
.field private final a:I

.field private a:LBD;

.field private a:Ljava/lang/String;

.field private final a:Z

.field private b:I


# direct methods
.method constructor <init>(ZI)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, LBD;->a:LBD;

    iput-object v0, p0, LBE;->a:LBD;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, LBE;->b:I

    .line 105
    const-string v0, ""

    iput-object v0, p0, LBE;->a:Ljava/lang/String;

    .line 108
    iput p2, p0, LBE;->a:I

    .line 109
    iput-boolean p1, p0, LBE;->a:Z

    .line 110
    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, LBE;->a:I

    return v0
.end method

.method a()LBD;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, LBE;->a:LBD;

    return-object v0
.end method

.method a(I)LBE;
    .registers 2
    .parameter

    .prologue
    .line 142
    iput p1, p0, LBE;->b:I

    .line 143
    return-object p0
.end method

.method a(LBD;)LBE;
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, LBE;->a:LBD;

    .line 128
    return-object p0
.end method

.method a(Ljava/lang/String;)LBE;
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, LBE;->a:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, LBE;->a:Ljava/lang/String;

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, LBE;->a:Z

    return v0
.end method

.method b()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, LBE;->b:I

    return v0
.end method
