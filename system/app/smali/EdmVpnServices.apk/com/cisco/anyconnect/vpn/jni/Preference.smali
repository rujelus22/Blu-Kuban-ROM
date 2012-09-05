.class public Lcom/cisco/anyconnect/vpn/jni/Preference;
.super Ljava/lang/Object;
.source "Preference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;
    }
.end annotation


# instance fields
.field public children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

.field public id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    return-void
.end method
