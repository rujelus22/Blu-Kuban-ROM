.class public Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;
.super Ljava/lang/Exception;
.source "GoogleLoginServiceBlockingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthenticationException"
.end annotation


# instance fields
.field private mStatus:Lcom/google/android/googleapps/LoginData$Status;

.field final synthetic this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    .line 85
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Lcom/google/android/googleapps/LoginData$Status;)V
    .registers 3
    .parameter
    .parameter "status"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    .line 101
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "message"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    .line 88
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Ljava/lang/String;Lcom/google/android/googleapps/LoginData$Status;)V
    .registers 4
    .parameter
    .parameter "message"
    .parameter "status"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    .line 97
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 98
    iput-object p3, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    .line 91
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Ljava/lang/Throwable;)V
    .registers 3
    .parameter
    .parameter "cause"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    .line 94
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/googleapps/LoginData$Status;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$AuthenticationException;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    return-object v0
.end method
