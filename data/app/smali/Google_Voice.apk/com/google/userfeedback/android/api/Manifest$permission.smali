.class public final Lcom/google/userfeedback/android/api/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final AUTO_SEND:Ljava/lang/String; = "com.google.android.apps.googlevoice.permission.AUTO_SEND"

.field public static final C2D_MESSAGE:Ljava/lang/String; = "com.google.android.apps.googlevoice.permission.C2D_MESSAGE"

.field public static final RECEIVE_SMS:Ljava/lang/String; = "com.google.android.apps.googlevoice.permission.RECEIVE_SMS"

.field public static final receive_push_messages:Ljava/lang/String; = "com.google.android.apps.googlevoice.permission.receive_push_messages"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
