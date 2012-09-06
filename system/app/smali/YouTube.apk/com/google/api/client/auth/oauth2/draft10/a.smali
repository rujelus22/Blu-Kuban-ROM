.class final synthetic Lcom/google/api/client/auth/oauth2/draft10/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 298
    invoke-static {}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->values()[Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/a;->a:[I

    :try_start_9
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/a;->a:[I

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->AUTHORIZATION_HEADER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/a;->a:[I

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->QUERY_PARAMETER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/a;->a:[I

    sget-object v1, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->FORM_ENCODED_BODY:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
