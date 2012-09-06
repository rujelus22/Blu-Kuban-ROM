.class public LarB;
.super Ljava/lang/Object;
.source "UserFeedbackReportAdapter.java"


# instance fields
.field public a:I

.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public a:Ljava/lang/Object;

.field public a:Ljava/lang/reflect/Field;

.field public a:[B

.field public b:I


# direct methods
.method constructor <init>(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 104
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, LarB;-><init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V

    .line 105
    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, LarB;->a:I

    .line 112
    iput-object p2, p0, LarB;->a:Ljava/lang/Object;

    .line 113
    iput-object p3, p0, LarB;->a:Ljava/lang/reflect/Field;

    .line 114
    iput-object p4, p0, LarB;->a:Ljava/lang/Class;

    .line 115
    iput p5, p0, LarB;->b:I

    .line 116
    if-eqz p3, :cond_3a

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 118
    :try_start_21
    invoke-virtual {p3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, LarB;->a:[B
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_2b} :catch_33

    .line 129
    :goto_2b
    return-void

    .line 119
    :catch_2c
    move-exception v0

    .line 120
    iput-object v2, p0, LarB;->a:[B

    .line 121
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2b

    .line 122
    :catch_33
    move-exception v0

    .line 123
    iput-object v2, p0, LarB;->a:[B

    .line 124
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2b

    .line 127
    :cond_3a
    iput-object v2, p0, LarB;->a:[B

    goto :goto_2b
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, LarB;->a:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method b()Z
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, LarB;->a:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method c()Z
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, LarB;->a:Ljava/lang/Class;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
