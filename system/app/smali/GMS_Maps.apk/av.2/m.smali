.class public Lav/m;
.super Lav/l;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lav/l;-><init>()V

    iput p1, p0, Lav/m;->a:I

    iput-object p2, p0, Lav/m;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lav/m;->a:I

    return v0
.end method
