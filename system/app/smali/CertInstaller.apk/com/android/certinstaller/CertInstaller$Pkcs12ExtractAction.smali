.class Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Lcom/android/certinstaller/CertInstaller$MyAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/certinstaller/CertInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pkcs12ExtractAction"
.end annotation


# instance fields
.field private transient hasRun:Z

.field private final mPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "password"

    .prologue
    .line 456
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;->mPassword:Ljava/lang/String;

    .line 458
    return-void
.end method


# virtual methods
.method public run(Lcom/android/certinstaller/CertInstaller;)V
    .registers 3
    .parameter "host"

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;->hasRun:Z

    if-eqz v0, :cond_5

    .line 466
    :goto_4
    return-void

    .line 464
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;->hasRun:Z

    .line 465
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/certinstaller/CertInstaller;->extractPkcs12InBackground(Ljava/lang/String;)V

    goto :goto_4
.end method
