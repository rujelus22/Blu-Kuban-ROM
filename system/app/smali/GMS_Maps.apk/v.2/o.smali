.class public Lv/o;
.super Lv/h;


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lv/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Lv/o;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lv/o;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lv/o;->a:Landroid/content/Context;

    const v1, 0x7f0b00f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
