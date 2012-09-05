.class Lcom/android/MtpApplication/MtpApplication$1;
.super Ljava/lang/Object;
.source "MtpApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/MtpApplication/MtpApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/MtpApplication/MtpApplication;


# direct methods
.method constructor <init>(Lcom/android/MtpApplication/MtpApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/MtpApplication/MtpApplication$1;->this$0:Lcom/android/MtpApplication/MtpApplication;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 127
    invoke-static {}, Lcom/android/MtpApplication/MtpApplication;->access$000()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_11

    .line 128
    iget-object v0, p0, Lcom/android/MtpApplication/MtpApplication$1;->this$0:Lcom/android/MtpApplication/MtpApplication;

    invoke-static {}, Lcom/android/MtpApplication/MtpApplication;->access$000()I

    move-result v1

    #calls: Lcom/android/MtpApplication/MtpApplication;->startSearchView(I)V
    invoke-static {v0, v1}, Lcom/android/MtpApplication/MtpApplication;->access$100(Lcom/android/MtpApplication/MtpApplication;I)V

    .line 134
    :goto_10
    return-void

    .line 131
    :cond_11
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/MtpApplication/MtpApplication;->access$002(I)I

    .line 132
    iget-object v0, p0, Lcom/android/MtpApplication/MtpApplication$1;->this$0:Lcom/android/MtpApplication/MtpApplication;

    invoke-static {}, Lcom/android/MtpApplication/MtpApplication;->access$000()I

    move-result v1

    #calls: Lcom/android/MtpApplication/MtpApplication;->startSearchView(I)V
    invoke-static {v0, v1}, Lcom/android/MtpApplication/MtpApplication;->access$100(Lcom/android/MtpApplication/MtpApplication;I)V

    goto :goto_10
.end method
