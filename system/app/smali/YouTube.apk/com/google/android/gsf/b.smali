.class public final Lcom/google/android/gsf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.action.GET_GLS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/b;->a:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 237
    packed-switch p0, :pswitch_data_c

    .line 245
    const-string v0, "Unknown error"

    :goto_5
    return-object v0

    .line 239
    :pswitch_6
    const-string v0, "The Google login service cannot be found."

    goto :goto_5

    .line 242
    :pswitch_9
    const-string v0, "The Google login service cannot be verified."

    goto :goto_5

    .line 237
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method
