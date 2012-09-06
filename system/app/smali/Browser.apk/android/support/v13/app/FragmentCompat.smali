.class public Landroid/support/v13/app/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentCompat$ICSFragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 43
    new-instance v0, Landroid/support/v13/app/FragmentCompat$ICSFragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$ICSFragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    .line 47
    :goto_d
    return-void

    .line 45
    :cond_e
    new-instance v0, Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static setMenuVisibility(Landroid/app/Fragment;Z)V
    .registers 3
    .parameter "f"
    .parameter "visible"

    .prologue
    .line 54
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 55
    return-void
.end method
