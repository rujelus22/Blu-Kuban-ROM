.class public Lorg/simpleframework/xml/stream/Format;
.super Ljava/lang/Object;
.source "Format.java"


# instance fields
.field private indent:I

.field private prolog:Ljava/lang/String;

.field private style:Lorg/simpleframework/xml/stream/Style;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Format;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v0}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V

    .line 96
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lorg/simpleframework/xml/stream/Format;->prolog:Ljava/lang/String;

    .line 135
    iput p1, p0, Lorg/simpleframework/xml/stream/Format;->indent:I

    .line 136
    iput-object p3, p0, Lorg/simpleframework/xml/stream/Format;->style:Lorg/simpleframework/xml/stream/Style;

    .line 137
    return-void
.end method

.method public constructor <init>(ILorg/simpleframework/xml/stream/Style;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Style;)V
    .registers 4
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V

    .line 108
    return-void
.end method


# virtual methods
.method public getIndent()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lorg/simpleframework/xml/stream/Format;->indent:I

    return v0
.end method

.method public getProlog()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Format;->prolog:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Lorg/simpleframework/xml/stream/Style;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Format;->style:Lorg/simpleframework/xml/stream/Style;

    return-object v0
.end method
