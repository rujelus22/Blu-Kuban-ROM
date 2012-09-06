.class synthetic Lcom/google/googlenav/ui/wizard/cB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 154
    invoke-static {}, Lcom/google/googlenav/ui/wizard/iS;->values()[Lcom/google/googlenav/ui/wizard/iS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlenav/ui/wizard/cB;->a:[I

    :try_start_9
    sget-object v0, Lcom/google/googlenav/ui/wizard/cB;->a:[I

    sget-object v1, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/iS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/googlenav/ui/wizard/cB;->a:[I

    sget-object v1, Lcom/google/googlenav/ui/wizard/iS;->a:Lcom/google/googlenav/ui/wizard/iS;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/iS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
