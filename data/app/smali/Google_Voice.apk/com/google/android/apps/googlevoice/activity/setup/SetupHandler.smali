.class public Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
.implements Lcom/google/android/apps/googlevoice/activity/MessageReceiver;
.implements Lcom/google/android/apps/googlevoice/activity/MessageSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$57;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_TOKEN_SENT:Ljava/lang/String; = "com.google.android.apps.googlevoice.SetupActivity.SMS_TOKEN_SENT"

.field private static final CHECK_CARRIER_PROVISIONING_DELAY_MILLIS:I = 0x3e8

.field private static final CHECK_CARRIER_PROVISIONING_WAIT_ATTEMPTS:I = 0x6

.field private static final CONFIRMATION_ATTEMPTS:I = 0x6

.field private static final DELAY_MILLIS:I = 0x3e8

.field static final DIVERT:Ljava/lang/String; = "divert"

.field public static final EXTRA_PARENT_IS_SELF:Ljava/lang/String; = "com.google.android.apps.googlevoice.PARENT_IS_SELF"

.field private static final ID_ACCOUNT_STATUS_CLIENT_ONLY:I = 0x40d

.field private static final ID_ACCOUNT_STATUS_FAILED:I = 0x40b

.field private static final ID_ACCOUNT_STATUS_FULL:I = 0x408

.field private static final ID_ACCOUNT_STATUS_LITE:I = 0x409

.field private static final ID_ACCOUNT_STATUS_NOT_SUBSCRIBED:I = 0x40a

.field private static final ID_ACCOUNT_STATUS_UNSUPPORTED_TYPE:I = 0x40c

.field static final ID_ADD_ACCOUNT_COMPLETED:I = 0x640

.field static final ID_AFTER_PHONE_VERIFIED_PAGE:I = 0x448

.field private static final ID_BACKGROUND_DATA_MISSING_CHECK:I = 0x5ef

.field private static final ID_BACKGROUND_DATA_MISSING_COMPLETED:I = 0x5f0

.field private static final ID_CARRIER_PROVISION_FAILED:I = 0x459

.field private static final ID_CARRIER_PROVISION_OK:I = 0x45a

.field private static final ID_CARRIER_PROVISION_OPTION_CHOSEN:I = 0x456

.field static final ID_CARRIER_PROVISION_OPTION_CONFIRMED:I = 0x457

.field static final ID_CARRIER_PROVISION_RESULT:I = 0x458

.field private static final ID_CARRIER_PROVISION_SKIP:I = 0x45b

.field private static final ID_CHECK_CARRIER_PROVISIONING:I = 0x3f2

.field private static final ID_CHECK_CARRIER_PROVISIONING_RESULT:I = 0x3f3

.field private static final ID_CHECK_CARRIER_PROVISIONING_WITH_VERIFIED_NUMBER:I = 0x3f5

.field private static final ID_CHECK_CARRIER_PROVISIONING_WITH_VERIFIED_NUMBER_RESULT:I = 0x3f6

.field private static final ID_CHOOSE_PHONE:I = 0x44c

.field static final ID_CHOOSE_PHONE_CHOSEN:I = 0x44d

.field private static final ID_CHOOSE_PHONE_NEW:I = 0x44e

.field private static final ID_CONFIGURE_VOICEMAIL:I = 0x515

.field private static final ID_CONFIRM_SMS_TOKEN:I = 0x442

.field private static final ID_CONFIRM_SMS_TOKEN_ATTEMPT:I = 0x443

.field private static final ID_CONFIRM_SMS_TOKEN_FAILED:I = 0x446

.field private static final ID_CONFIRM_SMS_TOKEN_OK:I = 0x445

.field private static final ID_CONFIRM_SMS_TOKEN_RESULT:I = 0x444

.field private static final ID_DIALOG_ACCOUNT_STATUS_FAILED:I = 0x836

.field static final ID_DIALOG_ADD_ACCOUNT_FAILED:I = 0x83e

.field static final ID_DIALOG_ADD_ACCOUNT_UNAVAILABLE:I = 0x83d

.field private static final ID_DIALOG_BACKGROUND_DATA_MISSING:I = 0x83c

.field private static final ID_DIALOG_CARRIER_PROVISIONING_WARNING:I = 0x83f

.field private static final ID_DIALOG_CARRIER_PROVISION_CONFIRMATION:I = 0x842

.field private static final ID_DIALOG_CARRIER_PROVISION_FAILED:I = 0x841

.field private static final ID_DIALOG_CHECK_CARRIER_PROVISIONING_FAILED:I = 0x840

.field private static final ID_DIALOG_NOT_SUBSCRIBED_DONUT:I = 0x835

.field private static final ID_DIALOG_NOT_SUBSCRIBED_NO_TELEPHONY:I = 0x843

.field private static final ID_DIALOG_PROVISIONING_FAILED:I = 0x837

.field private static final ID_DIALOG_SETTINGS_FAILED:I = 0x838

.field private static final ID_DIALOG_VERIFY_PHONE_FAILED:I = 0x839

.field private static final ID_DIALOG_VERIFY_PHONE_FAILED_IN_USE:I = 0x83a

.field private static final ID_DIALOG_VOICEMAIL_CONFIGURATION_FAILED:I = 0x83b

.field private static final ID_FINAL_CONFIGURATION:I = 0x6a4

.field private static final ID_FINISH:I = 0x6a5

.field private static final ID_FINISH_REGRADE:I = 0x579

.field private static final ID_GET_ACCOUNT_STATUS:I = 0x406

.field private static final ID_GET_ACCOUNT_STATUS_RESULT:I = 0x407

.field private static final ID_GET_ACCOUNT_STATUS_UPDATE_RESULT:I = 0x45c

.field private static final ID_GET_SMS_TOKEN:I = 0x424

.field private static final ID_GET_SMS_TOKEN_FAILED:I = 0x427

.field private static final ID_GET_SMS_TOKEN_OK:I = 0x426

.field private static final ID_GET_SMS_TOKEN_RESULT:I = 0x425

.field private static final ID_GET_VOICEMAIL_CONFIG:I = 0x4b0

.field private static final ID_GET_VOICEMAIL_CONFIG_FAILED:I = 0x4b2

.field private static final ID_GET_VOICEMAIL_CONFIG_OK:I = 0x4b3

.field private static final ID_GET_VOICEMAIL_CONFIG_RESULT:I = 0x4b1

.field private static final ID_GOOGLE_LOGIN_SERVICE_ACCOUNT_FAIL:I = 0x3ec

.field private static final ID_GOOGLE_LOGIN_SERVICE_ACCOUNT_OK:I = 0x3eb

.field static final ID_GOOGLE_LOGIN_SERVICE_GET_ACCOUNT:I = 0x3e9

.field private static final ID_GOOGLE_LOGIN_SERVICE_GET_ACCOUNT_CHECK_CARRIER_PROVISIONING:I = 0x3ea

.field static final ID_GO_TO_PAGE:I = 0x3e7

.field private static final ID_LOGIN:I = 0x3fe

.field private static final ID_LOGIN_CANCELED:I = 0x400

.field private static final ID_LOGIN_CLIENT_LOGIN:I = 0x3fd

.field private static final ID_LOGIN_GOOGLE_LOGIN:I = 0x3fc

.field private static final ID_LOGIN_OK:I = 0x3ff

.field static final ID_PAGE_ADD_ACCOUNT:I = 0x2713

.field static final ID_PAGE_CARRIER_PROVISION:I = 0x271e

.field static final ID_PAGE_CHOOSE_PHONE:I = 0x2715

.field static final ID_PAGE_CONFIGURE_VOICEMAIL:I = 0x271b

.field static final ID_PAGE_MAKING_CALLS:I = 0x2719

.field static final ID_PAGE_NO_VOICEMAIL:I = 0x271c

.field static final ID_PAGE_PHONE_VERIFIED:I = 0x2718

.field static final ID_PAGE_PRE_CONFIGURE_VOICEMAIL:I = 0x271a

.field static final ID_PAGE_PUSH_NOTIFICATIONS:I = 0x271d

.field static final ID_PAGE_SELECT_PIN:I = 0x2717

.field static final ID_PAGE_SIGN_IN:I = 0x2712

.field static final ID_PAGE_VERIFY_PHONE:I = 0x2716

.field static final ID_PAGE_WELCOME:I = 0x2711

.field static final ID_PAGE_WELCOME_INFO:I = 0x2714

.field private static final ID_PREPARE_FOR_PROVISIONING:I = 0x413

.field private static final ID_PREPARE_FOR_PROVISIONING_ALREADY_PROVISIONED:I = 0x417

.field private static final ID_PREPARE_FOR_PROVISIONING_FAILED:I = 0x416

.field private static final ID_PREPARE_FOR_PROVISIONING_OK:I = 0x415

.field private static final ID_PREPARE_FOR_PROVISIONING_RESULT:I = 0x414

.field static final ID_PROGRESS_CARRIER_PROVISION:I = 0x8a4

.field static final ID_PROGRESS_CHECKING_ACCOUNT:I = 0x89a

.field static final ID_PROGRESS_CHECKING_CARRIER:I = 0x899

.field static final ID_PROGRESS_CHECK_CARRIER_PROVISIONING:I = 0x8a2

.field static final ID_PROGRESS_CONFIRMING_SMS:I = 0x89f

.field static final ID_PROGRESS_GETTING_CONFIGURATION:I = 0x8a0

.field static final ID_PROGRESS_GETTING_SETTINGS:I = 0x7d4

.field static final ID_PROGRESS_GETTING_SMS_TOKEN:I = 0x89d

.field static final ID_PROGRESS_PROVISIONING:I = 0x89b

.field static final ID_PROGRESS_PUSH_NOTIFICATIONS:I = 0x8a1

.field static final ID_PROGRESS_SENDING_SMS:I = 0x89e

.field static final ID_PROGRESS_SETTINGS_UPDATE:I = 0x8a3

.field public static final ID_PROGRESS_SIGN_IN:I = 0x898

.field private static final ID_PUSH_NOTIFICATIONS:I = 0x5e6

.field private static final ID_PUSH_NOTIFICATIONS_SETUP:I = 0x5e7

.field private static final ID_REGISTER_FOR_PUSH_NOTIFICATIONS:I = 0x5e8

.field private static final ID_REGISTER_FOR_PUSH_NOTIFICATIONS_COMPLETED:I = 0x5eb

.field private static final ID_REGISTER_FOR_PUSH_NOTIFICATIONS_FAILED:I = 0x5ea

.field private static final ID_REGISTER_FOR_PUSH_NOTIFICATIONS_OK:I = 0x5e9

.field private static final ID_RETRIEVE_SETTINGS:I = 0x5ec

.field private static final ID_RETRIEVE_SETTINGS_COMPLETED:I = 0x5ee

.field private static final ID_RETRIEVE_SETTINGS_RESULT:I = 0x5ed

.field private static final ID_SEND_SMS_TOKEN:I = 0x42e

.field private static final ID_SEND_SMS_TOKEN_FAILED:I = 0x430

.field static final ID_SEND_SMS_TOKEN_OK:I = 0x42f

.field private static final ID_SETTINGS:I = 0x41a

.field private static final ID_SETTINGS_FAILED:I = 0x41d

.field private static final ID_SETTINGS_OK:I = 0x41c

.field private static final ID_SETTINGS_RESULT:I = 0x41b

.field private static final ID_SETTINGS_UPDATE_RESULT:I = 0x447

.field private static final ID_SET_PIN:I = 0x41f

.field private static final ID_SHOULD_PROVISION:I = 0x410

.field private static final ID_SHOULD_PROVISION_NO:I = 0x412

.field private static final ID_SHOULD_PROVISION_YES:I = 0x411

.field static final ID_SKIP_CONFIGURE_VOICEMAIL:I = 0x516

.field private static final ID_WAIT_FOR_CARRIER_PROVISIONING_WITH_VERIFIED_NUMBER:I = 0x3f7

.field private static final ID_WAIT_FOR_CHECK_CARRIER_PROVISIONING:I = 0x3f4

.field static final NONE_SELECTED:I = -0x1

.field private static final SAVED_STATE_ACCOUNT_KEY:Ljava/lang/String; = "setupHandler.account"

.field private static final SAVED_STATE_ACTIVE_ACCOUNT_KEY:Ljava/lang/String; = "setupHandler.activeAccount"

.field private static final SAVED_STATE_ALREADY_CARRIER_PROVISIONED_KEY:Ljava/lang/String; = "setupHandler.alreadyCarrierProvisioned"

.field private static final SAVED_STATE_CARRIER_PROVISIONABLE_KEY:Ljava/lang/String; = "setupHandler.carrierProvisionable"

.field private static final SAVED_STATE_CARRIER_PROVISIONING_VERIFY_NEEDED_KEY:Ljava/lang/String; = "setupHandler.carrierProvisioningVerifyNeeded"

.field private static final SAVED_STATE_CARRIER_PROVISIONING_WARNING_DISPLAYED_KEY:Ljava/lang/String; = "setupHandler.carrierProvisioningWarningDisplayed"

.field private static final SAVED_STATE_CHECK_CARRIER_PROVISIONING_WAIT_ATTEMPTS_REMAINING_KEY:Ljava/lang/String; = "setupHandler.checkCarrierProvisioningWaitAttemptsRemaining"

.field private static final SAVED_STATE_CONFIGURING_VOICEMAIL_KEY:Ljava/lang/String; = "setupHandler.configuringVoicemail"

.field private static final SAVED_STATE_CONFIRMATION_ATTEMPTS_REMAINING_KEY:Ljava/lang/String; = "setupHandler.confirmationAttemptsRemaining"

.field private static final SAVED_STATE_CREATE_ACCOUNT_KEY:Ljava/lang/String; = "setupHandler.createAccount"

.field private static final SAVED_STATE_CURRENT_PAGE_KEY:Ljava/lang/String; = "setupHandler.currentPage"

.field private static final SAVED_STATE_DIVERSION_CODE_KEY:Ljava/lang/String; = "setupHandler.diversionCode"

.field private static final SAVED_STATE_DIVERSION_NUMBER_KEY:Ljava/lang/String; = "setupHandler.diversionNumber"

.field private static final SAVED_STATE_DIVERSION_TYPE_KEY:Ljava/lang/String; = "setupHandler.diversionType"

.field private static final SAVED_STATE_DOWNGRADING_KEY:Ljava/lang/String; = "setupHandler.downgrading"

.field private static final SAVED_STATE_FORMATTED_FORWARDING_NUMBER_KEY:Ljava/lang/String; = "setupHandler.formattedForwardingNumber"

.field private static final SAVED_STATE_FORMATTED_PHONE_NUMBER_KEY:Ljava/lang/String; = "setupHandler.formattedPhoneNumber"

.field private static final SAVED_STATE_FORWARDING_NUMBER_KEY:Ljava/lang/String; = "setupHandler.forwardingNumber"

.field private static final SAVED_STATE_GOOGLE_LOGIN_SERVICE_ACCOUNTS_KEY:Ljava/lang/String; = "setupHandler.googleLoginServiceAccounts"

.field private static final SAVED_STATE_NEXT_ACTION_KEY:Ljava/lang/String; = "setupHandler.nextAction"

.field private static final SAVED_STATE_NEXT_PAGE_KEY:Ljava/lang/String; = "setupHandler.nextPage"

.field private static final SAVED_STATE_PARENT_IS_SELF_KEY:Ljava/lang/String; = "setupHandler.parentIsSelf"

.field private static final SAVED_STATE_PASSWORD_KEY:Ljava/lang/String; = "setupHandler.password"

.field private static final SAVED_STATE_PHONE_FOUND_KEY:Ljava/lang/String; = "setupHandler.phoneFound"

.field private static final SAVED_STATE_PHONE_NUMBER_KEY:Ljava/lang/String; = "setupHandler.phoneNumber"

.field private static final SAVED_STATE_PIN_KEY:Ljava/lang/String; = "setupHandler.pin"

.field private static final SAVED_STATE_PREVIOUS_PAGES_KEY:Ljava/lang/String; = "setupHandler.previousPages"

.field private static final SAVED_STATE_RESULT_CODE_KEY:Ljava/lang/String; = "setupHandler.resultCode"

.field private static final SAVED_STATE_SELECTED_FORWARDING_PHONE_INDEX_KEY:Ljava/lang/String; = "setupHandler.selectedForwardingPhoneIndex"

.field private static final SAVED_STATE_SHOW_CARRIER_PROVISIONING_WARNING_KEY:Ljava/lang/String; = "setupHandler.showCarrierProvisioningWarning"

.field private static final SAVED_STATE_SMS_NUMBER_KEY:Ljava/lang/String; = "setupHandler.smsNumber"

.field private static final SAVED_STATE_SMS_TOKEN_KEY:Ljava/lang/String; = "setupHandler.smsToken"

.field private static final SAVED_STATE_UPGRADING_KEY:Ljava/lang/String; = "setupHandler.upgrading"

.field private static final SAVED_STATE_VOICEMAIL_NUMBER_KEY:Ljava/lang/String; = "setupHandler.voicemailNumber"

.field static final SCHEME_TEL:Ljava/lang/String; = "tel:"


# instance fields
.field account:Ljava/lang/String;

.field accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

.field activeAccount:Ljava/lang/Boolean;

.field private final activityContext:Landroid/content/Context;

.field private final addAccountManager:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;

.field alreadyCarrierProvisioned:Z

.field private authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

.field callingModesAdapter:Lcom/google/android/apps/googlevoice/CallingModesAdapter;

.field carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

.field carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

.field carrierProvisionable:Ljava/lang/Boolean;

.field carrierProvisioningVerifyNeeded:Z

.field carrierProvisioningWarningDisplayed:Z

.field checkCarrierProvisioningDelayMillis:J

.field checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

.field checkCarrierProvisioningWaitAttemptsRemaining:I

.field private final componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

.field configuringVoicemail:Z

.field confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

.field confirmationAttemptsRemaining:I

.field createAccount:Ljava/lang/Boolean;

.field currentPage:I

.field currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

.field private delayMillis:J

.field private final dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field deviceSetup:Z

.field private dialogContext:Landroid/content/Context;

.field private dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

.field diversionCode:Ljava/lang/String;

.field diversionNumber:Ljava/lang/String;

.field diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

.field downgrading:Z

.field finished:Z

.field formattedForwardingNumber:Ljava/lang/String;

.field formattedPhoneNumber:Ljava/lang/String;

.field forwardingNumber:Ljava/lang/String;

.field getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

.field getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

.field googleLoginServiceAccounts:[Ljava/lang/String;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field nextAction:I

.field nextPage:I

.field parentIsSelf:Z

.field password:Ljava/lang/String;

.field phoneFound:Z

.field phoneNumber:Ljava/lang/String;

.field phones:[Lcom/google/android/apps/googlevoice/core/Phone;

.field phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

.field pin:Ljava/lang/String;

.field prepareAccountForProvisioningRpc:Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;

.field previousPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field resultCode:I

.field resultExtra:Landroid/content/Intent;

.field selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

.field selectedForwardingPhoneIndex:I

.field sentReceiver:Landroid/content/BroadcastReceiver;

.field private final serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field showCarrierProvisioningWarning:Z

.field private final signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

.field smsNumber:Ljava/lang/String;

.field private final smsSender:Lcom/google/android/apps/googlevoice/system/SmsSender;

.field smsToken:Ljava/lang/String;

.field updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

.field upgrading:Z

.field verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

.field private final versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field private final veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private final voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

.field voicemailNumber:Ljava/lang/String;

.field webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DependencyResolver;)V
    .registers 8
    .parameter "activityContext"
    .parameter "dependencyResolver"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    .line 366
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    .line 368
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->deviceSetup:Z

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showCarrierProvisioningWarning:Z

    .line 373
    iput v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    .line 389
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->parentIsSelf:Z

    .line 390
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    .line 391
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    .line 392
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->configuringVoicemail:Z

    .line 393
    iput v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedForwardingPhoneIndex:I

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->previousPages:Ljava/util/ArrayList;

    .line 400
    iput v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resultCode:I

    .line 401
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resultExtra:Landroid/content/Intent;

    .line 402
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->finished:Z

    .line 404
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$1;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sentReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    .line 429
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 430
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 431
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVeryPersistentPreferences()Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    .line 432
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 433
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    .line 434
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 435
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103006f

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    .line 436
    invoke-interface {p2, p0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createMessageSender(Lcom/google/android/apps/googlevoice/activity/MessageReceiver;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    .line 438
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getAddAccountManager()Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->addAccountManager:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;

    .line 439
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getComponentManager()Lcom/google/android/apps/googlevoice/system/ComponentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

    .line 440
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSignInStatusRegistrar()Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    .line 441
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSmsSender()Lcom/google/android/apps/googlevoice/system/SmsSender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsSender:Lcom/google/android/apps/googlevoice/system/SmsSender;

    .line 442
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setResult(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->finish()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->clearSelectedCarrierProvisioningOption()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->addAccountManager:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/common/log/GLog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    return-object v0
.end method

.method private appendStringToBuilder(Ljava/lang/StringBuilder;I)V
    .registers 4
    .parameter "message"
    .parameter "id"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    return-void
.end method

.method private clearSelectedCarrierProvisioningOption()V
    .registers 2

    .prologue
    .line 3073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    .line 3074
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

    if-eqz v0, :cond_c

    .line 3075
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->clearSelectedOption()V

    .line 3077
    :cond_c
    return-void
.end method

.method public static dialDiversionCode(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "diversionCode"

    .prologue
    .line 2327
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2328
    .local v0, dialIntent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2329
    .local v1, diversionCodeUri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2330
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2331
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2332
    return-void
.end method

.method private dismissInlineProgress()V
    .registers 2

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    if-eqz v0, :cond_9

    .line 2313
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->dismissInlineProgress()V

    .line 2315
    :cond_9
    return-void
.end method

.method private finish()V
    .registers 2

    .prologue
    .line 2210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->finished:Z

    .line 2213
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    if-eqz v0, :cond_c

    .line 2214
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->finish()V

    .line 2216
    :cond_c
    return-void
.end method

.method private getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;
    .registers 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    return-object v0
.end method

.method private getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;
    .registers 2

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v0

    return-object v0
.end method

.method private handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z
    .registers 6
    .parameter "rpc"

    .prologue
    const/4 v1, 0x0

    .line 2244
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/ApiRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2245
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/ApiRpc;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 2246
    .local v0, exception:Ljava/lang/Exception;
    instance-of v2, v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v2, :cond_1f

    check-cast v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local v0           #exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v2

    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v2, v3, :cond_1f

    .line 2249
    const/16 v1, 0x3fe

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 2250
    const/4 v1, 0x1

    .line 2255
    :cond_1f
    return v1
.end method

.method private handleCheckCarrierProvisioningResult(Landroid/os/Message;Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;)V
    .registers 7
    .parameter "message"
    .parameter "ccpRpc"

    .prologue
    const/16 v3, 0x840

    .line 3024
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq p2, v0, :cond_21

    .line 3026
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring canceled check carrier provisioning tresult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 3057
    :cond_20
    :goto_20
    return-void

    .line 3029
    :cond_21
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->hasException()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3030
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "check carrier provisioning RPC failed"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 3031
    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto :goto_20

    .line 3032
    :cond_32
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->hasProvisionError()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3033
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check carrier provisioning RPC partner error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->getProvisionError()Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 3035
    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto :goto_20

    .line 3036
    :cond_58
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->hasProvisionable()Z

    move-result v0

    if-nez v0, :cond_69

    .line 3037
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "check carrier provisioning RPC did not return a provisionable result"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 3038
    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto :goto_20

    .line 3040
    :cond_69
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->isProvisionable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    .line 3041
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->hasAlreadyProvisioned()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 3042
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->isAlreadyProvisioned()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->alreadyCarrierProvisioned:Z

    .line 3044
    :cond_7f
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->hasVerifyNeeded()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 3045
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->verifyNeeded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisioningVerifyNeeded:Z

    .line 3047
    :cond_8b
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->hasDataDeletedWhenProvisioned()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 3048
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->dataDeletedWhenProvisioned()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showCarrierProvisioningWarning:Z

    .line 3050
    :cond_97
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->hasAccountAlreadyProvisioned()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->isAccountAlreadyProvisioned()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3053
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "check carrier provisioning RPC -- account is already provisioned"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->i(Ljava/lang/String;)V

    .line 3054
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    goto/16 :goto_20
.end method

.method private isActiveAccount()Z
    .registers 3

    .prologue
    .line 3241
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activeAccount:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCarrierProvisionOptionSelected()Z
    .registers 2

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isCarrierProvisionable()Z
    .registers 3

    .prologue
    .line 3220
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCarrierProvisionableUnknown()Z
    .registers 2

    .prologue
    .line 3216
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isTMobileG2Device()Z
    .registers 3

    .prologue
    .line 3580
    const-string v0, "htc_vision"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "tmobile"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private onAddAccountCompleted(Landroid/os/Bundle;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 2180
    const-string v1, "successful"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2182
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setAccount(Ljava/lang/String;)V

    .line 2184
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 2203
    :goto_16
    :pswitch_16
    return-void

    .line 2186
    :cond_17
    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2187
    .local v0, error:I
    sget-object v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$57;->$SwitchMap$com$google$android$apps$googlevoice$activity$setup$AddAccountManager$Error:[I

    invoke-static {}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;->values()[Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    goto :goto_16

    .line 2194
    :pswitch_2f
    const/16 v1, 0x83d

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto :goto_16

    .line 2199
    :pswitch_35
    const/16 v1, 0x83e

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto :goto_16

    .line 2187
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_2f
        :pswitch_35
    .end packed-switch
.end method

.method private preConfigureVoicemailTextId()I
    .registers 2

    .prologue
    .line 3572
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isTMobileG2Device()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3573
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->setup_page_pre_configure_explanation_g2:I

    .line 3575
    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->setup_page_pre_configure_explanation:I

    goto :goto_8
.end method

.method private setButtons(IZZZIZZZ)V
    .registers 18
    .parameter "leftTitle"
    .parameter "leftArrow"
    .parameter "leftVisible"
    .parameter "leftEnabled"
    .parameter "rightTitle"
    .parameter "rightArrow"
    .parameter "rightVisible"
    .parameter "rightEnabled"

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setButtons(IZZZIZZZ)V

    .line 2224
    return-void
.end method

.method private setButtonsEnabled(ZZ)V
    .registers 4
    .parameter "leftEnabled"
    .parameter "rightEnabled"

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setButtonsEnabled(ZZ)V

    .line 2228
    return-void
.end method

.method private setResult(I)V
    .registers 3
    .parameter "code"

    .prologue
    .line 2231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setResult(ILandroid/content/Intent;)V

    .line 2232
    return-void
.end method

.method private setResult(ILandroid/content/Intent;)V
    .registers 3
    .parameter "code"
    .parameter "extra"

    .prologue
    .line 2235
    iput p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resultCode:I

    .line 2236
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resultExtra:Landroid/content/Intent;

    .line 2237
    return-void
.end method

.method private shouldAutomaticallySetupVoicemail()Z
    .registers 2

    .prologue
    .line 3558
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isTMobileG2Device()Z

    move-result v0

    return v0
.end method

.method private shouldCheckCarrierProvisioning()Z
    .registers 3

    .prologue
    .line 3233
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;->hasCheckCarrierProvisioning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3234
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;->shouldCheckCarrierProvisioning()Z

    move-result v0

    .line 3237
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isOnSprintNetwork(Landroid/content/Context;)Z

    move-result v0

    goto :goto_e
.end method

.method private shouldInterceptInternationalCallsOnly()Z
    .registers 3

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldInterceptInternationalCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldInterceptDomesticCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private shouldSkipSetupMakingCalls()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3540
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isTMobileG2Device()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionable()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3549
    :cond_d
    :goto_d
    return v0

    .line 3545
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldInterceptCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3549
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private shouldSkipSetupVoicemail()Z
    .registers 3

    .prologue
    .line 3553
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldConfigureVoicemail(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionable()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private showDialog(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    if-eqz v0, :cond_22

    .line 2319
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showing dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    .line 2324
    :goto_21
    return-void

    .line 2322
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No dialog manager when trying to show dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V
    .registers 5
    .parameter "id"
    .parameter "canCancel"
    .parameter "listener"

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    if-eqz v0, :cond_9

    .line 2307
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 2309
    :cond_9
    return-void
.end method

.method private taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;
    .registers 6
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2240
    new-instance v0, Lcom/google/android/apps/googlevoice/MessageTask;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/MessageTask;-><init>(Lcom/googlex/common/task/TaskRunner;Landroid/os/Message;)V

    return-object v0
.end method

.method private updateSignInRightButton()V
    .registers 3

    .prologue
    .line 3358
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->isInputComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setRightButtonEnabled(Z)V

    .line 3359
    return-void
.end method

.method private welcomeTextId()I
    .registers 2

    .prologue
    .line 3562
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isTMobileG2Device()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3563
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->setup_page_welcome_explanation_g2:I

    .line 3567
    :goto_8
    return v0

    .line 3564
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldCheckCarrierProvisioning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3565
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->setup_page_welcome_explanation_sprint:I

    goto :goto_8

    .line 3567
    :cond_12
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->setup_page_welcome_explanation:I

    goto :goto_8
.end method


# virtual methods
.method public configureVoicemailActivityDidRestart(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;)V
    .registers 8
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3308
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    .line 3309
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "configuringVoicemail = %b, didCompleteVoicemailSetup = %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->configuringVoicemail:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteVoicemailSetup()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 3311
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->configuringVoicemail:Z

    if-eqz v0, :cond_41

    .line 3312
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteVoicemailSetup()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3315
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setResult(I)V

    .line 3316
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->parentIsSelf:Z

    if-eqz v0, :cond_42

    .line 3317
    const/16 v0, 0x5e6

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 3325
    :goto_3f
    iput-boolean v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->configuringVoicemail:Z

    .line 3327
    :cond_41
    return-void

    .line 3319
    :cond_42
    const/16 v0, 0x6a5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_3f

    .line 3323
    :cond_48
    invoke-direct {p0, v4, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtonsEnabled(ZZ)V

    goto :goto_3f
.end method

.method public dialDiversionCode()V
    .registers 3

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialDiversionCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 2337
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountsAdapter()Lcom/google/android/apps/googlevoice/AccountsAdapter;
    .registers 2

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    return-object v0
.end method

.method public getAccountsClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 3132
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    return-object v0
.end method

.method public getAddAccountClickListener(Landroid/app/Activity;)Landroid/view/View$OnClickListener;
    .registers 3
    .parameter "activity"

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->addAccountManager:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager;->isAddAccountAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3156
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$52;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$52;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;Landroid/app/Activity;)V

    .line 3163
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getCallingModesAdapter()Lcom/google/android/apps/googlevoice/CallingModesAdapter;
    .registers 2

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->callingModesAdapter:Lcom/google/android/apps/googlevoice/CallingModesAdapter;

    return-object v0
.end method

.method public getCallingModesClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 3109
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$49;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$49;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    return-object v0
.end method

.method public declared-synchronized getCarrierProvisionAdapter()Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;
    .registers 2

    .prologue
    .line 3061
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCarrierProvisionClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 3081
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$48;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$48;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    return-object v0
.end method

.method public getCreateAccount()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 3249
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    return v0
.end method

.method public getDiversionCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDiversionNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDiversionType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    .registers 2

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    return-object v0
.end method

.method public getFormattedForwardingNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedForwardingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardingNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleLoginServiceAccounts()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlForMessage()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 519
    iget v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    packed-switch v1, :pswitch_data_15e

    .line 602
    :goto_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 521
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_welcome_explanation_donut:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 523
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_welcome_explanation_no_telephony:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 526
    :cond_2d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->welcomeTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 530
    :pswitch_38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_account_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 533
    :pswitch_41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_sign_in_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 538
    :pswitch_4a
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionable()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isAlreadyCarrierProvisioned()Z

    move-result v1

    if-nez v1, :cond_9c

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9c

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    if-eq v1, v2, :cond_9c

    move v4, v0

    .line 542
    .local v4, shouldShowCarrierProvisionPage:Z
    :goto_69
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneFound:Z

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisioningVerifyNeeded()Z

    move-result v5

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupMakingCalls()Z

    move-result v6

    if-nez v6, :cond_9e

    move v6, v0

    :goto_82
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldInterceptInternationalCallsOnly()Z

    move-result v7

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupVoicemail()Z

    move-result v9

    if-nez v9, :cond_8d

    move v8, v0

    :cond_8d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getWelcomeInfoHtmlMessage(ZZZZZZZZZ)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .end local v4           #shouldShowCarrierProvisionPage:Z
    :cond_9c
    move v4, v8

    .line 538
    goto :goto_69

    .restart local v4       #shouldShowCarrierProvisionPage:Z
    :cond_9e
    move v6, v8

    .line 542
    goto :goto_82

    .line 549
    .end local v4           #shouldShowCarrierProvisionPage:Z
    :pswitch_a0
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_choose_phone_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 552
    :pswitch_aa
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_verify_number_explanation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 555
    :pswitch_b4
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_select_pin_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 558
    :pswitch_be
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->setup_page_phone_verified_explanation:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 562
    :pswitch_d2
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_making_calls_explanation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 565
    :pswitch_dc
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->preConfigureVoicemailTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 568
    :pswitch_e8
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->getNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_17e

    goto/16 :goto_7

    .line 574
    :pswitch_f3
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_configure_explanation_generic:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 570
    :pswitch_fd
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->setup_page_configure_explanation_carrier_specific:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionCode:Ljava/lang/String;

    aput-object v3, v0, v8

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 579
    :pswitch_10d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_configure_explanation_manual:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 584
    :pswitch_117
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_configure_explanation_none:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 587
    :pswitch_121
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v0, v1, :cond_135

    .line 588
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_push_notifications_explanation_lite:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 590
    :cond_135
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSmsNotificationEnabled(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 591
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_push_notifications_explanation_full_sms:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 594
    :cond_149
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_push_notifications_explanation_full_no_sms:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 600
    :pswitch_153
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_carrier_provision_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 519
    nop

    :pswitch_data_15e
    .packed-switch 0x2711
        :pswitch_9
        :pswitch_38
        :pswitch_41
        :pswitch_4a
        :pswitch_a0
        :pswitch_aa
        :pswitch_b4
        :pswitch_be
        :pswitch_d2
        :pswitch_dc
        :pswitch_e8
        :pswitch_117
        :pswitch_121
        :pswitch_153
    .end packed-switch

    .line 568
    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_f3
        :pswitch_fd
        :pswitch_10d
        :pswitch_10d
    .end packed-switch
.end method

.method public getNextAction()I
    .registers 2

    .prologue
    .line 3257
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->nextAction:I

    return v0
.end method

.method public getNextPage()I
    .registers 2

    .prologue
    .line 3266
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->nextPage:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhones()[Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 2

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phones:[Lcom/google/android/apps/googlevoice/core/Phone;

    return-object v0
.end method

.method public declared-synchronized getPhonesAdapter()Lcom/google/android/apps/googlevoice/PhonesAdapter;
    .registers 2

    .prologue
    .line 2991
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhonesClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 3000
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getPinWatcher()Landroid/text/TextWatcher;
    .registers 2

    .prologue
    .line 3363
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$54;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$54;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    return-object v0
.end method

.method public getProgressTitle(I)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 2261
    sparse-switch p1, :sswitch_data_7c

    .line 2301
    const-string v0, ""

    :goto_5
    return-object v0

    .line 2263
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_sign_in_progress_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2266
    :sswitch_f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_checking_carrier:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2269
    :sswitch_18
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_checking_account:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2272
    :sswitch_21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_provisioning:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2275
    :sswitch_2a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_getting_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2278
    :sswitch_33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_getting_sms_token:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2281
    :sswitch_3c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_sending_sms:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2284
    :sswitch_45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_confirming_sms:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2287
    :sswitch_4e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_getting_configuration:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2290
    :sswitch_57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_push_notifications:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2293
    :sswitch_60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_check_carrier_provisioning_progress:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2296
    :sswitch_69
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_settings_update_progress:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2299
    :sswitch_72
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_carrier_provision_progress:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2261
    nop

    :sswitch_data_7c
    .sparse-switch
        0x7d4 -> :sswitch_2a
        0x898 -> :sswitch_6
        0x899 -> :sswitch_f
        0x89a -> :sswitch_18
        0x89b -> :sswitch_21
        0x89d -> :sswitch_33
        0x89e -> :sswitch_3c
        0x89f -> :sswitch_45
        0x8a0 -> :sswitch_4e
        0x8a1 -> :sswitch_57
        0x8a2 -> :sswitch_60
        0x8a3 -> :sswitch_69
        0x8a4 -> :sswitch_72
    .end sparse-switch
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 3276
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resultCode:I

    return v0
.end method

.method public getResultExtra()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 3285
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resultExtra:Landroid/content/Intent;

    return-object v0
.end method

.method public getSelectedForwardingPhoneIndex()I
    .registers 2

    .prologue
    .line 2982
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedForwardingPhoneIndex:I

    return v0
.end method

.method public getSignInPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3348
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSignInUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3338
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipCarrierProvisioningListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 3190
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$53;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$53;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    return-object v0
.end method

.method public getSkipConfigureVoicemailListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 3405
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$56;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$56;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    return-object v0
.end method

.method public getSmsNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 482
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    packed-switch v0, :pswitch_data_a0

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x0

    :goto_20
    return-object v0

    .line 484
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_welcome_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 486
    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_sign_in_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 488
    :pswitch_33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_use_different_account_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 490
    :pswitch_3c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_welcome_info_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 492
    :pswitch_45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_choose_phone_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 494
    :pswitch_4e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_verify_number_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 496
    :pswitch_57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_select_pin_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 498
    :pswitch_60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_phone_verified_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 500
    :pswitch_69
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_making_calls_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 502
    :pswitch_72
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_pre_configure_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 504
    :pswitch_7b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_configure_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 506
    :pswitch_84
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_configure_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 508
    :pswitch_8d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_push_notifications_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 510
    :pswitch_96
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_carrier_provision_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 482
    nop

    :pswitch_data_a0
    .packed-switch 0x2711
        :pswitch_21
        :pswitch_2a
        :pswitch_33
        :pswitch_3c
        :pswitch_45
        :pswitch_4e
        :pswitch_57
        :pswitch_60
        :pswitch_69
        :pswitch_72
        :pswitch_7b
        :pswitch_84
        :pswitch_8d
        :pswitch_96
    .end packed-switch
.end method

.method public getUseDifferentAccountClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 3145
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$51;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$51;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    return-object v0
.end method

.method public getVoicemailNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicemailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    .prologue
    .line 3383
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->webViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_b

    .line 3384
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$55;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$55;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->webViewClient:Landroid/webkit/WebViewClient;

    .line 3400
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->webViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method getWelcomeInfoHtmlMessage(ZZZZZZZZZ)Ljava/lang/String;
    .registers 13
    .parameter "isDonut"
    .parameter "shouldCreateAccount"
    .parameter "wasPhoneFound"
    .parameter "shouldShowCarrierProvisionPage"
    .parameter "shouldVerifyBeforeCarrierProvisioning"
    .parameter "shouldSetupMakingCalls"
    .parameter "shouldSetupInternationalCallsOnly"
    .parameter "shouldSetupVoicemail"
    .parameter "hasTelephony"

    .prologue
    .line 631
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 633
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->setup_info_no_account_created_wizard_contents:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 683
    :goto_c
    return-object v1

    .line 637
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .local v0, message:Ljava/lang/StringBuilder;
    if-nez p9, :cond_1e

    .line 639
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_info_section1_no_telephony_wizard_contents:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->appendStringToBuilder(Ljava/lang/StringBuilder;I)V

    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 642
    :cond_1e
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_info_section1_wizard_contents:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->appendStringToBuilder(Ljava/lang/StringBuilder;I)V

    .line 643
    if-eqz p3, :cond_34

    if-nez p5, :cond_34

    if-nez p2, :cond_34

    if-nez p4, :cond_34

    if-nez p6, :cond_34

    if-nez p8, :cond_34

    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 653
    :cond_34
    const-string v1, "<p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_info_section2_wizard_contents:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->appendStringToBuilder(Ljava/lang/StringBuilder;I)V

    .line 655
    const-string v1, "<p><p><ul style=\"margin: 0px; margin-top:15px; padding-left:1em;\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    if-eqz p3, :cond_47

    if-eqz p5, :cond_4c

    .line 657
    :cond_47
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_info_section3_bullet1_verify_phone_wizard_contents:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->appendStringToBuilder(Ljava/lang/StringBuilder;I)V

    .line 660
    :cond_4c
    if-eqz p2, :cond_53

    .line 661
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_info_section3_bullet2_voicemail_pin_wizard_contents:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->appendStringToBuilder(Ljava/lang/StringBuilder;I)V

    .line 664
    :cond_53
    if-eqz p4, :cond_5a

    .line 665
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_info_section3_bullet3_carrier_provision_contents:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->appendStringToBuilder(Ljava/lang/StringBuilder;I)V

    .line 668
    :cond_5a
    if-eqz p6, :cond_63

    .line 669
    if-eqz p7, :cond_74

    .line 670
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_info_section3_bullet4_making_calls_international_wizard_contents:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->appendStringToBuilder(Ljava/lang/StringBuilder;I)V

    .line 677
    :cond_63
    :goto_63
    if-eqz p8, :cond_6a

    .line 678
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_info_section3_bullet5_voicemail_configuration_wizard_contents:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->appendStringToBuilder(Ljava/lang/StringBuilder;I)V

    .line 681
    :cond_6a
    const-string v1, "</ul>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 673
    :cond_74
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_info_section3_bullet4_making_calls_wizard_contents:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->appendStringToBuilder(Ljava/lang/StringBuilder;I)V

    goto :goto_63
.end method

.method public goBack()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 1088
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_54

    .line 1089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1091
    .local v0, first:Z
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->previousPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1092
    .local v3, p:Ljava/lang/Integer;
    if-eqz v0, :cond_24

    .line 1093
    const/4 v0, 0x0

    .line 1097
    :goto_20
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1095
    :cond_24
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 1099
    .end local v3           #p:Ljava/lang/Integer;
    :cond_2a
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v6, "goBack(): currentPage = %d, %d previous pages: (%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->previousPages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1102
    .end local v0           #first:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_54
    iget v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    if-lez v5, :cond_5d

    .line 1105
    iget v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->removeMessages(I)V

    .line 1107
    :cond_5d
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->previousPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_86

    .line 1108
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->previousPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1109
    .local v2, lastIndex:I
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->previousPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    .line 1110
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->previousPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1115
    .end local v2           #lastIndex:I
    :goto_80
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->finish()V

    .line 1116
    return-void

    .line 1112
    :cond_86
    const/4 v5, 0x0

    invoke-direct {p0, v10, v5}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setResult(ILandroid/content/Intent;)V

    goto :goto_80
.end method

.method goToPage(I)V
    .registers 5
    .parameter "page"

    .prologue
    .line 804
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    if-ne p1, v0, :cond_22

    .line 805
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloading page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resetButtons()V

    .line 881
    :goto_21
    return-void

    .line 808
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going from page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 809
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 811
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    if-lez v0, :cond_58

    .line 812
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->previousPages:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_58
    iput p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    .line 816
    packed-switch p1, :pswitch_data_11e

    .line 878
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    goto :goto_21

    .line 818
    :pswitch_76
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldCheckCarrierProvisioning()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 819
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupCarrierProvisionWelcomeActivity(Landroid/content/Context;)V

    goto :goto_21

    .line 821
    :cond_86
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupMessageActivity(Landroid/content/Context;)V

    goto :goto_21

    .line 826
    :pswitch_90
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupSignInActivity(Landroid/content/Context;)V

    goto :goto_21

    .line 830
    :pswitch_9a
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupAddAccountActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 834
    :pswitch_a5
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupMessageActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 838
    :pswitch_b0
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupChoosePhoneActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 842
    :pswitch_bb
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupMessageActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 846
    :pswitch_c6
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupVoicemailPinActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 850
    :pswitch_d1
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupMessageActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 854
    :pswitch_dc
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupMakingCallsActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 858
    :pswitch_e7
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupPreConfigureVoicemailActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 862
    :pswitch_f2
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupConfigureVoicemailActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 866
    :pswitch_fd
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupMessageActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 870
    :pswitch_108
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupMessageActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 874
    :pswitch_113
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSetupCarrierProvisionActivity(Landroid/content/Context;)V

    goto/16 :goto_21

    .line 816
    :pswitch_data_11e
    .packed-switch 0x2711
        :pswitch_76
        :pswitch_90
        :pswitch_9a
        :pswitch_a5
        :pswitch_b0
        :pswitch_bb
        :pswitch_c6
        :pswitch_d1
        :pswitch_dc
        :pswitch_e7
        :pswitch_f2
        :pswitch_fd
        :pswitch_108
        :pswitch_113
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 25
    .parameter "message"

    .prologue
    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handling message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_123e

    .line 2175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 2177
    :cond_43
    :goto_43
    return-void

    .line 1129
    :sswitch_44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getNextPage()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto :goto_43

    .line 1133
    :sswitch_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getLine1Number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 1134
    .local v21, line1Number:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1135
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createCheckCarrierProvisioningRpc()Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->setPhoneNumber(Ljava/lang/String;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    const/16 v3, 0x3f3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto :goto_43

    .line 1144
    .end local v21           #line1Number:Ljava/lang/String;
    :sswitch_89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleCheckCarrierProvisioningResult(Landroid/os/Message;Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;)V

    .line 1145
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    goto :goto_43

    .line 1152
    :sswitch_9a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    .line 1154
    const/16 v2, 0x3e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_43

    .line 1158
    :sswitch_a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    if-nez v2, :cond_b9

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getAuthenticationHelper()Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    .line 1161
    :cond_b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const/16 v4, 0x3e9

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/googlevoice/AuthenticationHelper;->getAccount(Landroid/app/Activity;I)V

    goto/16 :goto_43

    .line 1167
    :sswitch_c8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/Intent;

    .line 1168
    .local v20, intent:Landroid/content/Intent;
    if-nez v20, :cond_105

    const/4 v2, 0x0

    :goto_d3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    if-eqz v2, :cond_fc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_fc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_fc

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 1175
    :cond_fc
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1168
    :cond_105
    const-string v2, "accounts"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_d3

    .line 1177
    :cond_10e
    const/16 v2, 0x2712

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    if-eqz v2, :cond_43

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->setAccounts([Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1185
    .end local v20           #intent:Landroid/content/Intent;
    :sswitch_128
    const/16 v2, 0x898

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const/16 v4, 0x3fe

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/google/android/apps/googlevoice/ActivityManager;->startGoogleLoginServiceLoginActivityForResult(Landroid/app/Activity;ILjava/lang/String;Z)V

    goto/16 :goto_43

    .line 1192
    :sswitch_149
    const/16 v2, 0x898

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const/16 v4, 0x3fe

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->password:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/apps/googlevoice/ActivityManager;->startClientLoginServiceLoginActivityForResult(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_43

    .line 1199
    :sswitch_16e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldCheckCarrierProvisioning()Z

    move-result v2

    if-eqz v2, :cond_181

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionableUnknown()Z

    move-result v2

    if-eqz v2, :cond_181

    .line 1202
    const/16 v2, 0x3f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 1204
    :cond_181
    const/16 v2, 0x406

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1208
    :sswitch_18a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1209
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1213
    :sswitch_198
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    .line 1214
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldCheckCarrierProvisioning()Z

    move-result v2

    if-eqz v2, :cond_1da

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionableUnknown()Z

    move-result v2

    if-eqz v2, :cond_1da

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasLine1Number(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 1217
    const/16 v2, 0x8a2

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$2;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1224
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    .line 1225
    const-wide/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningDelayMillis:J

    .line 1226
    const/16 v2, 0x3f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1228
    :cond_1da
    const/16 v2, 0x89a

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$3;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1237
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createGetAccountStatusRpc()Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    .line 1238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    const/16 v3, 0x407

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_43

    .line 1244
    :sswitch_20a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionableUnknown()Z

    move-result v2

    if-eqz v2, :cond_275

    .line 1245
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    if-lez v2, :cond_25a

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "waiting %d ms for check carrier provisioning RPC, %d wait attempt(s) remaining"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningDelayMillis:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1250
    const/16 v2, 0x3f4

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningDelayMillis:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1252
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningDelayMillis:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningDelayMillis:J

    goto/16 :goto_43

    .line 1254
    :cond_25a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "giving up on waiting for check carrier provisioning RPC"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 1255
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    .line 1256
    const/16 v2, 0x406

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1259
    :cond_275
    const/16 v2, 0x406

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1264
    :sswitch_27e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_2a8

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring canceled account status result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1269
    :cond_2a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_2cc

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z

    move-result v2

    if-nez v2, :cond_2c5

    .line 1271
    const/16 v2, 0x40b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 1337
    :cond_2c5
    :goto_2c5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    goto/16 :goto_43

    .line 1274
    :cond_2cc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getPrimaryDID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setSubscriberNumber(Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-eq v2, v3, :cond_302

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->CLIENT_ONLY:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v2, v3, :cond_34c

    :cond_302
    const/4 v2, 0x1

    :goto_303
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->hasActiveInUse()Z

    move-result v2

    if-eqz v2, :cond_34e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->isActiveInUse()Z

    move-result v2

    :goto_31d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activeAccount:Ljava/lang/Boolean;

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_1384

    .line 1315
    :goto_334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_138c

    .line 1333
    const/16 v2, 0x40c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2c5

    .line 1276
    :cond_34c
    const/4 v2, 0x0

    goto :goto_303

    .line 1278
    :cond_34e
    const/4 v2, 0x0

    goto :goto_31d

    .line 1284
    :pswitch_350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "User has setup the app to level LITE only"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v2, v3, :cond_379

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "User has a full account => upgrade!"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1290
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    .line 1291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    goto :goto_334

    .line 1294
    :cond_379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "User has a lite account => done"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1295
    const/16 v2, 0x6a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_334

    .line 1301
    :pswitch_38a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "User has setup the app to level FULL"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v2, v3, :cond_3b0

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "User has a full account => done"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1305
    const/16 v2, 0x6a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_334

    .line 1308
    :cond_3b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "User has a lite account => downgrade"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1309
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    .line 1310
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    goto/16 :goto_334

    .line 1317
    :pswitch_3c5
    const/16 v2, 0x40a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2c5

    .line 1321
    :pswitch_3ce
    const/16 v2, 0x409

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2c5

    .line 1325
    :pswitch_3d7
    const/16 v2, 0x408

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2c5

    .line 1329
    :pswitch_3e0
    const/16 v2, 0x40d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2c5

    .line 1345
    :sswitch_3e9
    const/16 v2, 0x41a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1349
    :sswitch_3f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_40c

    .line 1350
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1351
    const/16 v2, 0x843

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1352
    :cond_40c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->mayCreateNewAccount(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_423

    .line 1353
    const/16 v2, 0x413

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1357
    :cond_423
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1358
    const/16 v2, 0x835

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1365
    :sswitch_42f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1366
    const/16 v2, 0x835

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1370
    :sswitch_43b
    const/16 v2, 0x836

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1374
    :sswitch_444
    const/16 v2, 0x7d4

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$4;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    const/16 v3, 0x41b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    goto/16 :goto_43

    .line 1387
    :sswitch_469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_493

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring canceled settings result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1392
    :cond_493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_4b7

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z

    move-result v2

    if-nez v2, :cond_4b0

    .line 1394
    const/16 v2, 0x41d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 1403
    :cond_4b0
    :goto_4b0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    goto/16 :goto_43

    .line 1397
    :cond_4b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phones:[Lcom/google/android/apps/googlevoice/core/Phone;

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phones:[Lcom/google/android/apps/googlevoice/core/Phone;

    if-nez v2, :cond_4d0

    .line 1399
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/apps/googlevoice/core/Phone;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phones:[Lcom/google/android/apps/googlevoice/core/Phone;

    .line 1401
    :cond_4d0
    const/16 v2, 0x41c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_4b0

    .line 1407
    :sswitch_4d8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1408
    const/16 v2, 0x2714

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1412
    :sswitch_4e4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1413
    const/16 v2, 0x838

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1417
    :sswitch_4f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->shouldProvisionAccount()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->setShouldProvisionAccount(Z)V

    .line 1420
    const/16 v2, 0x413

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1427
    :sswitch_50b
    const/16 v2, 0x413

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1431
    :sswitch_514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setResult(I)V

    .line 1432
    const/16 v2, 0x6a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1436
    :sswitch_525
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    .line 1437
    const/16 v2, 0x89b

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$5;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1446
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createPrepareAccountForProvisioningRpc()Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->prepareAccountForProvisioningRpc:Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->prepareAccountForProvisioningRpc:Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;

    const/16 v3, 0x414

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->prepareAccountForProvisioningRpc:Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_43

    .line 1453
    :sswitch_55e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->prepareAccountForProvisioningRpc:Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;

    if-eq v2, v3, :cond_588

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring canceled provisioning result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1458
    :cond_588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->prepareAccountForProvisioningRpc:Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_5a7

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->prepareAccountForProvisioningRpc:Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1460
    const/16 v2, 0x416

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1463
    :cond_5a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->prepareAccountForProvisioningRpc:Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;->getProvisioningResult()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->getNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_1398

    goto/16 :goto_43

    .line 1465
    :pswitch_5b8
    const/16 v2, 0x415

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1469
    :pswitch_5c1
    const/16 v2, 0x416

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1473
    :pswitch_5ca
    const/16 v2, 0x417

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1480
    :sswitch_5d3
    const/16 v2, 0x2714

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1484
    :sswitch_5dc
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    .line 1485
    const/16 v2, 0x837

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1496
    :sswitch_5ee
    const/16 v2, 0x406

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1503
    :sswitch_5f7
    const/16 v2, 0x89d

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$6;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1512
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createVerifyViaSmsRpc()Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getSimCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->setCountryCode(Ljava/lang/String;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getLine1Number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 1515
    .local v16, deviceNumber:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/googlex/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_640

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->setDeviceNumber(Ljava/lang/String;)V

    .line 1518
    :cond_640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    const/16 v3, 0x425

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_43

    .line 1523
    .end local v16           #deviceNumber:Ljava/lang/String;
    :sswitch_655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_67f

    .line 1525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring canceled sms token result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1528
    :cond_67f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_6a3

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z

    move-result v2

    if-nez v2, :cond_69c

    .line 1530
    const/16 v2, 0x427

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 1538
    :cond_69c
    :goto_69c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    goto/16 :goto_43

    .line 1533
    :cond_6a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->getSMSNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsNumber:Ljava/lang/String;

    .line 1534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->getVerificationToken()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsToken:Ljava/lang/String;

    .line 1535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "will send verification token"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1536
    const/16 v2, 0x426

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_69c

    .line 1542
    :sswitch_6cc
    const/16 v2, 0x42e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1546
    :sswitch_6d5
    const/16 v2, 0x839

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1550
    :sswitch_6de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending SMS token: createAccount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->registerSmsSentReceiver()V

    .line 1552
    const/16 v2, 0x89e

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1553
    new-instance v22, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.googlevoice.SetupActivity.SMS_TOKEN_SENT"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v22, sentIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    const/16 v3, 0x42e

    const/high16 v4, 0x4000

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1557
    .local v6, sentPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsSender:Lcom/google/android/apps/googlevoice/system/SmsSender;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsNumber:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsToken:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/google/android/apps/googlevoice/system/SmsSender;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_43

    .line 1561
    .end local v6           #sentPendingIntent:Landroid/app/PendingIntent;
    .end local v22           #sentIntent:Landroid/content/Intent;
    :sswitch_732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_745

    .line 1562
    const/16 v2, 0x2717

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1564
    :cond_745
    const/16 v2, 0x442

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1569
    :sswitch_74e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1570
    const/16 v2, 0x839

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1574
    :sswitch_75a
    const/16 v2, 0x442

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1578
    :sswitch_763
    const/16 v2, 0x89f

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1593
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmationAttemptsRemaining:I

    .line 1594
    const-wide/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->delayMillis:J

    .line 1597
    const/16 v2, 0x443

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1601
    :sswitch_786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirming SMS Token: createAccount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pin=<REMOVED>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1602
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createConfirmVerifyViaSmsRpc()Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsToken:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->setVerificationToken(Ljava/lang/String;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->setCreateNewAccount(Z)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7f4

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->pin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->setPIN(Ljava/lang/String;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->setTimeZone(Ljava/lang/String;)V

    .line 1610
    :cond_7f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    const/16 v3, 0x444

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_43

    .line 1615
    :sswitch_809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_833

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring canceled sms confirm result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1620
    :cond_833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_852

    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1622
    const/16 v2, 0x446

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1625
    :cond_852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->getIsVerified()Z

    move-result v2

    if-eqz v2, :cond_8b1

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->getDeviceNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->getFormattedDeviceNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedPhoneNumber:Ljava/lang/String;

    .line 1628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "confirmed number via SMS"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_8a8

    .line 1632
    const/16 v2, 0x8a3

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$8;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    const/16 v3, 0x447

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    goto/16 :goto_43

    .line 1645
    :cond_8a8
    const/16 v2, 0x446

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1648
    :cond_8b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "SMS token not yet confirmed"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1649
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmationAttemptsRemaining:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmationAttemptsRemaining:I

    if-lez v2, :cond_904

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "%d SMS confirmation attempts remaining, waiting %d ms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmationAttemptsRemaining:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->delayMillis:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1652
    const/16 v2, 0x443

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->delayMillis:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1653
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->delayMillis:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->delayMillis:J

    goto/16 :goto_43

    .line 1655
    :cond_904
    const/16 v2, 0x446

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1662
    :sswitch_90d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_937

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring canceled settings result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1667
    :cond_937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_95e

    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z

    move-result v2

    if-nez v2, :cond_957

    .line 1669
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1670
    const/16 v2, 0x838

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    .line 1680
    :cond_957
    :goto_957
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    goto/16 :goto_43

    .line 1673
    :cond_95e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phones:[Lcom/google/android/apps/googlevoice/core/Phone;

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phones:[Lcom/google/android/apps/googlevoice/core/Phone;

    if-nez v2, :cond_977

    .line 1675
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/apps/googlevoice/core/Phone;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phones:[Lcom/google/android/apps/googlevoice/core/Phone;

    .line 1677
    :cond_977
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1678
    const/16 v2, 0x445

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_957

    .line 1684
    :sswitch_982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedPhoneNumber:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setForwardingNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS token confirmed, createAccount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9cb

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "setting account type to LITE"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    .line 1691
    :cond_9cb
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldCheckCarrierProvisioning()Z

    move-result v2

    if-eqz v2, :cond_9de

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionableUnknown()Z

    move-result v2

    if-eqz v2, :cond_9de

    .line 1693
    const/16 v2, 0x3f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 1695
    :cond_9de
    const/16 v2, 0x2718

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    .line 1696
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    goto/16 :goto_43

    .line 1700
    :sswitch_9ec
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1701
    const/16 v17, 0x839

    .line 1702
    .local v17, dialogId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->getException()Ljava/lang/Exception;

    move-result-object v19

    .line 1703
    .local v19, exception:Ljava/lang/Exception;
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v2, :cond_a0b

    check-cast v19, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local v19           #exception:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v2

    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->FORWARDING_IN_USE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v2, v3, :cond_a0b

    .line 1706
    const/16 v17, 0x83a

    .line 1708
    :cond_a0b
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    .line 1709
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    goto/16 :goto_43

    .line 1713
    .end local v17           #dialogId:I
    :sswitch_a19
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createCheckCarrierProvisioningRpc()Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->setPhoneNumber(Ljava/lang/String;)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    const/16 v3, 0x3f6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_43

    .line 1721
    :sswitch_a45
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldCheckCarrierProvisioning()Z

    move-result v2

    if-eqz v2, :cond_a74

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionableUnknown()Z

    move-result v2

    if-eqz v2, :cond_a74

    .line 1723
    const/16 v2, 0x8a2

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$9;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1730
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    .line 1731
    const-wide/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningDelayMillis:J

    .line 1732
    const/16 v2, 0x3f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1734
    :cond_a74
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionable()Z

    move-result v2

    if-eqz v2, :cond_b11

    .line 1735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_aed

    .line 1737
    const/16 v2, 0x8a4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1740
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createCarrierProvisionRpc()Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ace

    .line 1743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->setClientPhoneNumber(Ljava/lang/String;)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->setIntegratedPrimaryDID(Ljava/lang/String;)V

    .line 1750
    :goto_ab9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    const/16 v3, 0x458

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_43

    .line 1746
    :cond_ace
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getLine1Number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 1747
    .restart local v21       #line1Number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->setClientPhoneNumber(Ljava/lang/String;)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->setIntegratedPrimaryDID(Ljava/lang/String;)V

    goto :goto_ab9

    .line 1752
    .end local v21           #line1Number:Ljava/lang/String;
    :cond_aed
    sget-object v2, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v3

    if-ne v2, v3, :cond_b08

    .line 1753
    sget-object v2, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->USE_PARTNER_NUMBER:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    .line 1755
    const/16 v2, 0x457

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1757
    :cond_b08
    const/16 v2, 0x271e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1759
    :cond_b11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupMakingCalls()Z

    move-result v2

    if-eqz v2, :cond_b38

    .line 1760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v3, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 1761
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupVoicemail()Z

    move-result v2

    if-eqz v2, :cond_b2f

    .line 1762
    const/16 v2, 0x516

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1764
    :cond_b2f
    const/16 v2, 0x271a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1767
    :cond_b38
    const/16 v2, 0x2719

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1773
    :sswitch_b41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleCheckCarrierProvisioningResult(Landroid/os/Message;Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;)V

    .line 1774
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningRpc:Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;

    goto/16 :goto_43

    .line 1778
    :sswitch_b53
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionableUnknown()Z

    move-result v2

    if-eqz v2, :cond_bc1

    .line 1779
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    if-lez v2, :cond_ba3

    .line 1780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "waiting %d ms for check carrier provisioning RPC, %d wait attempt(s) remaining"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningDelayMillis:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1784
    const/16 v2, 0x3f7

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningDelayMillis:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1786
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningDelayMillis:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningDelayMillis:J

    goto/16 :goto_43

    .line 1788
    :cond_ba3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "giving up on waiting for check carrier provisioning RPC"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 1789
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1790
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    .line 1791
    const/16 v2, 0x448

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1794
    :cond_bc1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1795
    const/16 v2, 0x448

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1800
    :sswitch_bcd
    const/16 v2, 0x2715

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1804
    :sswitch_bd6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedForwardingNumber:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setForwardingNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionable()Z

    move-result v2

    if-eqz v2, :cond_bfa

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isAlreadyCarrierProvisioned()Z

    move-result v2

    if-nez v2, :cond_bfa

    .line 1806
    const/16 v2, 0x271e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1807
    :cond_bfa
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupMakingCalls()Z

    move-result v2

    if-eqz v2, :cond_c21

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v3, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 1809
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupVoicemail()Z

    move-result v2

    if-eqz v2, :cond_c18

    .line 1810
    const/16 v2, 0x516

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1812
    :cond_c18
    const/16 v2, 0x271a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1815
    :cond_c21
    const/16 v2, 0x2719

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1820
    :sswitch_c2a
    const/16 v2, 0x2716

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1824
    :sswitch_c33
    sget-object v2, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->USE_PARTNER_NUMBER:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4e

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isActiveAccount()Z

    move-result v2

    if-eqz v2, :cond_c4e

    .line 1827
    const/16 v2, 0x842

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1829
    :cond_c4e
    const/16 v2, 0x457

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1834
    :sswitch_c57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    if-eqz v2, :cond_c68

    .line 1835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "Carrier provision attempted while a request is already in progress"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1838
    :cond_c68
    const/16 v2, 0x8a4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1840
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createCarrierProvisionRpc()Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    .line 1846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getLine1Number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 1847
    .restart local v21       #line1Number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cdd

    .line 1848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->setClientPhoneNumber(Ljava/lang/String;)V

    .line 1852
    :goto_c9e
    sget-object v2, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->USE_PARTNER_NUMBER:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf1

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "use partner number as integrated primary DID"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ce7

    .line 1856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->setIntegratedPrimaryDID(Ljava/lang/String;)V

    .line 1863
    :goto_cc8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    const/16 v3, 0x458

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->submit(Landroid/os/Message;)V

    goto/16 :goto_43

    .line 1850
    :cond_cdd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->setClientPhoneNumber(Ljava/lang/String;)V

    goto :goto_c9e

    .line 1858
    :cond_ce7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->setIntegratedPrimaryDID(Ljava/lang/String;)V

    goto :goto_cc8

    .line 1861
    :cond_cf1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "use google voice number as integrated primary DID (the default option)"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_cc8

    .line 1869
    .end local v21           #line1Number:Ljava/lang/String;
    :sswitch_cfb
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_d28

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring cancelled carrier provision result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1875
    :cond_d28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_d5e

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in carrier provisioning result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 1877
    const/16 v2, 0x459

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 1891
    :goto_d57
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    goto/16 :goto_43

    .line 1878
    :cond_d5e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->hasProvisionError()Z

    move-result v2

    if-eqz v2, :cond_d92

    .line 1879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in carrier provisioning code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;->getProvisionError()Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 1880
    const/16 v2, 0x459

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_d57

    .line 1882
    :cond_d92
    sget-object v2, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v3

    if-ne v2, v3, :cond_dbd

    .line 1885
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createGetAccountStatusRpc()Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    .line 1886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    const/16 v3, 0x45c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 1889
    :cond_dbd
    const/16 v2, 0x45a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_d57

    .line 1895
    :sswitch_dc5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_def

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring canceled account status result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1900
    :cond_def
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_e13

    .line 1901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z

    move-result v2

    if-nez v2, :cond_e0c

    .line 1902
    const/16 v2, 0x836

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    .line 1908
    :cond_e0c
    :goto_e0c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    goto/16 :goto_43

    .line 1905
    :cond_e13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountStatusRpc:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getPrimaryDID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setSubscriberNumber(Ljava/lang/String;)V

    goto :goto_e0c

    .line 1912
    :sswitch_e32
    const/16 v2, 0x841

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1918
    :sswitch_e3b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupMakingCalls()Z

    move-result v2

    if-eqz v2, :cond_e62

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v3, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 1920
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupVoicemail()Z

    move-result v2

    if-eqz v2, :cond_e59

    .line 1921
    const/16 v2, 0x516

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1923
    :cond_e59
    const/16 v2, 0x271a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1926
    :cond_e62
    const/16 v2, 0x2719

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1931
    :sswitch_e6b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSimReady(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_ecb

    .line 1932
    const/16 v2, 0x8a0

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$10;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1941
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createGetVoicemailConfigurationRpc()Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->setCarrierCode(Ljava/lang/String;)V

    .line 1943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->setDeviceNumber(Ljava/lang/String;)V

    .line 1944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    const/16 v3, 0x4b1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_43

    .line 1952
    :cond_ecb
    const/16 v2, 0x271c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1957
    :sswitch_ed4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_efe

    .line 1959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring canceled voicemail config result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1962
    :cond_efe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_f29

    .line 1963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1964
    const/16 v2, 0x4b2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->getException()Ljava/lang/Exception;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_43

    .line 1968
    :cond_f29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicemailNumber:Ljava/lang/String;

    .line 1969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->getVoicemailRedirectNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionNumber:Ljava/lang/String;

    .line 1970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->getVoicemailRedirectString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionCode:Ljava/lang/String;

    .line 1971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->getVoicemailRedirectType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    .line 1972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "voicemail config retrieved OK"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1973
    const/16 v2, 0x4b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1978
    :sswitch_f6b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setVoicemailNumber(Ljava/lang/String;)V

    .line 1979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionNumber:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setVoicemailDiversionNumber(Ljava/lang/String;)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionCode:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setVoicemailDiversionCode(Ljava/lang/String;)V

    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setVoicemailDiversionType(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;)V

    .line 1982
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldAutomaticallySetupVoicemail()Z

    move-result v2

    if-eqz v2, :cond_fa6

    .line 1983
    const/16 v2, 0x515

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 1985
    :cond_fa6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getNextPage()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 1990
    :sswitch_fb1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 1991
    const/16 v2, 0x83b

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 1995
    :sswitch_fbd
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->parentIsSelf:Z

    if-eqz v2, :cond_100d

    .line 2001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_13a2

    .line 2009
    :goto_fd2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->configuringVoicemail:Z

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidCompleteVoicemailSetup(Z)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/ActivityManager;->startChooseVoicemailProviderActivity(Landroid/app/Activity;)V

    .line 2013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "starting voicemail provider to configure voicemail"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 2003
    :pswitch_ff9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidCompleteAppSetup(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    goto :goto_fd2

    .line 2006
    :pswitch_1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidCompleteAppSetup(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    goto :goto_fd2

    .line 2015
    :cond_100d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidCompleteVoicemailSetup(Z)V

    .line 2016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "voicemail config OK, stored voicemail number"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 2017
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.ForwardingNumberTime"

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setResult(ILandroid/content/Intent;)V

    .line 2023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->getNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_13aa

    .line 2039
    :goto_1050
    :pswitch_1050
    const/16 v2, 0x5e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2032
    :pswitch_1059
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialDiversionCode()V

    goto :goto_1050

    .line 2044
    :sswitch_105d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->parentIsSelf:Z

    if-eqz v2, :cond_1072

    .line 2048
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setResult(I)V

    .line 2055
    :goto_1069
    const/16 v2, 0x5e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2053
    :cond_1072
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setResult(I)V

    goto :goto_1069

    .line 2059
    :sswitch_1079
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setResult(I)V

    .line 2060
    const/16 v2, 0x5e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2064
    :sswitch_1088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsEclairOrEarlier()Z

    move-result v2

    if-eqz v2, :cond_10af

    .line 2065
    const/16 v2, 0x5e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 2066
    .local v18, done:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getAccountHelper()Lcom/google/android/apps/googlevoice/system/AccountHelper;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Lcom/google/android/apps/googlevoice/system/AccountHelper;->getDevicePrimaryAccount(Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_43

    .line 2068
    .end local v18           #done:Landroid/os/Message;
    :cond_10af
    const/16 v2, 0x5e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2073
    :sswitch_10b8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->updateVoicemailProviderStatus(Lcom/google/android/apps/googlevoice/system/ComponentManager;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v2

    if-eqz v2, :cond_10e4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didConfigurePushNotifications()Z

    move-result v2

    if-nez v2, :cond_10e4

    .line 2076
    const/16 v2, 0x271d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto/16 :goto_43

    .line 2078
    :cond_10e4
    const/16 v2, 0x6a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2083
    :sswitch_10ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "push notifications: registering"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 2084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const/16 v4, 0x5e8

    const-string v5, "com.google.android.apps.googlevoice.push.REGISTER"

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/apps/googlevoice/ActivityManager;->startPushNotificationSettingActivityForResult(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_43

    .line 2091
    :sswitch_110b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "push notifications: registration ok"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidConfigurePushNotifications(Z)V

    .line 2093
    const/16 v2, 0x5eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2097
    :sswitch_1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "push notifications: registration failed"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 2099
    const/16 v2, 0x5eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2103
    :sswitch_1137
    const/16 v2, 0x5ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2107
    :sswitch_1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "push notifications: updating settings"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 2112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    const/16 v3, 0x5ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    goto/16 :goto_43

    .line 2116
    :sswitch_115f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_1189

    .line 2117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring unexpected settings result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 2120
    :cond_1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_11a4

    .line 2121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_11ab

    .line 2127
    :goto_119d
    const/16 v2, 0x5ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 2129
    :cond_11a4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    goto/16 :goto_43

    .line 2125
    :cond_11ab
    const/16 v2, 0x271d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto :goto_119d

    .line 2133
    :sswitch_11b3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V

    .line 2134
    const/16 v2, 0x5ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    .line 2135
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Lcom/google/android/apps/googlevoice/R$string;->button_finish:I

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v15}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_43

    .line 2141
    :sswitch_11cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->mayUseDataInBackground()Z

    move-result v2

    if-eqz v2, :cond_11e0

    .line 2142
    const/16 v2, 0x5f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2144
    :cond_11e0
    const/16 v2, 0x83c

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    goto/16 :goto_43

    .line 2149
    :sswitch_11e9
    const/16 v2, 0x6a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2153
    :sswitch_11f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "final configuration"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 2154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_13b2

    .line 2162
    :goto_120a
    const/16 v2, 0x6a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_43

    .line 2156
    :pswitch_1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidCompleteAppSetup(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    goto :goto_120a

    .line 2159
    :pswitch_121d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidCompleteAppSetup(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    goto :goto_120a

    .line 2166
    :sswitch_1227
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->onAddAccountCompleted(Landroid/os/Bundle;)V

    goto/16 :goto_43

    .line 2170
    :sswitch_1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;->onSignedIn()V

    .line 2171
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->finish()V

    goto/16 :goto_43

    .line 1127
    :sswitch_data_123e
    .sparse-switch
        0x3e7 -> :sswitch_44
        0x3e9 -> :sswitch_a7
        0x3ea -> :sswitch_9a
        0x3eb -> :sswitch_c8
        0x3ec -> :sswitch_c8
        0x3f2 -> :sswitch_4e
        0x3f3 -> :sswitch_89
        0x3f4 -> :sswitch_20a
        0x3f5 -> :sswitch_a19
        0x3f6 -> :sswitch_b41
        0x3f7 -> :sswitch_b53
        0x3fc -> :sswitch_128
        0x3fd -> :sswitch_149
        0x3ff -> :sswitch_16e
        0x400 -> :sswitch_18a
        0x406 -> :sswitch_198
        0x407 -> :sswitch_27e
        0x408 -> :sswitch_3e9
        0x409 -> :sswitch_3e9
        0x40a -> :sswitch_3f2
        0x40b -> :sswitch_43b
        0x40c -> :sswitch_42f
        0x40d -> :sswitch_3e9
        0x410 -> :sswitch_4f0
        0x411 -> :sswitch_50b
        0x412 -> :sswitch_514
        0x413 -> :sswitch_525
        0x414 -> :sswitch_55e
        0x415 -> :sswitch_5d3
        0x416 -> :sswitch_5dc
        0x417 -> :sswitch_5ee
        0x41a -> :sswitch_444
        0x41b -> :sswitch_469
        0x41c -> :sswitch_4d8
        0x41d -> :sswitch_4e4
        0x41f -> :sswitch_75a
        0x424 -> :sswitch_5f7
        0x425 -> :sswitch_655
        0x426 -> :sswitch_6cc
        0x427 -> :sswitch_6d5
        0x42e -> :sswitch_6de
        0x42f -> :sswitch_732
        0x430 -> :sswitch_74e
        0x442 -> :sswitch_763
        0x443 -> :sswitch_786
        0x444 -> :sswitch_809
        0x445 -> :sswitch_982
        0x446 -> :sswitch_9ec
        0x447 -> :sswitch_90d
        0x448 -> :sswitch_a45
        0x44c -> :sswitch_bcd
        0x44d -> :sswitch_bd6
        0x44e -> :sswitch_c2a
        0x456 -> :sswitch_c33
        0x457 -> :sswitch_c57
        0x458 -> :sswitch_cfb
        0x459 -> :sswitch_e32
        0x45a -> :sswitch_e3b
        0x45b -> :sswitch_e3b
        0x45c -> :sswitch_dc5
        0x4b0 -> :sswitch_e6b
        0x4b1 -> :sswitch_ed4
        0x4b2 -> :sswitch_fb1
        0x4b3 -> :sswitch_f6b
        0x515 -> :sswitch_fbd
        0x516 -> :sswitch_105d
        0x579 -> :sswitch_1079
        0x5e6 -> :sswitch_1088
        0x5e7 -> :sswitch_10b8
        0x5e8 -> :sswitch_10ed
        0x5e9 -> :sswitch_110b
        0x5ea -> :sswitch_1125
        0x5eb -> :sswitch_1137
        0x5ec -> :sswitch_1140
        0x5ed -> :sswitch_115f
        0x5ee -> :sswitch_11b3
        0x5ef -> :sswitch_11cd
        0x5f0 -> :sswitch_11e9
        0x640 -> :sswitch_1227
        0x6a4 -> :sswitch_11f2
        0x6a5 -> :sswitch_1232
    .end sparse-switch

    .line 1281
    :pswitch_data_1384
    .packed-switch 0x1
        :pswitch_350
        :pswitch_38a
    .end packed-switch

    .line 1315
    :pswitch_data_138c
    .packed-switch 0x0
        :pswitch_3c5
        :pswitch_3ce
        :pswitch_3d7
        :pswitch_3e0
    .end packed-switch

    .line 1463
    :pswitch_data_1398
    .packed-switch 0x1
        :pswitch_5b8
        :pswitch_5ca
        :pswitch_5c1
    .end packed-switch

    .line 2001
    :pswitch_data_13a2
    .packed-switch 0x1
        :pswitch_1003
        :pswitch_ff9
    .end packed-switch

    .line 2023
    :pswitch_data_13aa
    .packed-switch 0x0
        :pswitch_1050
        :pswitch_1059
    .end packed-switch

    .line 2154
    :pswitch_data_13b2
    .packed-switch 0x1
        :pswitch_121d
        :pswitch_1213
    .end packed-switch
.end method

.method public isAlreadyCarrierProvisioned()Z
    .registers 2

    .prologue
    .line 3200
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->alreadyCarrierProvisioned:Z

    return v0
.end method

.method public isCarrierProvisioningVerifyNeeded()Z
    .registers 2

    .prologue
    .line 3208
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisioningVerifyNeeded:Z

    return v0
.end method

.method public isConfiguringVoicemail()Z
    .registers 2

    .prologue
    .line 2974
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->configuringVoicemail:Z

    return v0
.end method

.method public isDeviceSetup()Z
    .registers 2

    .prologue
    .line 3172
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->deviceSetup:Z

    return v0
.end method

.method public isDowngrading()Z
    .registers 2

    .prologue
    .line 2966
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    return v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 3294
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->finished:Z

    return v0
.end method

.method public isShowCarrierProvisioningWarning()Z
    .registers 2

    .prologue
    .line 3181
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showCarrierProvisioningWarning:Z

    return v0
.end method

.method public isUpgrading()Z
    .registers 2

    .prologue
    .line 2958
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    return v0
.end method

.method public obtainMessage(I)Landroid/os/Message;
    .registers 3
    .parameter "what"

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 3619
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3614
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 2342
    sparse-switch p1, :sswitch_data_38

    .line 2368
    :goto_4
    return-void

    .line 2344
    :sswitch_5
    if-ne p2, v0, :cond_11

    .line 2345
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0, p3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 2347
    :cond_11
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0, p3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 2352
    :sswitch_1b
    if-ne p2, v0, :cond_23

    const/16 v0, 0x3ff

    :goto_1f
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_23
    const/16 v0, 0x400

    goto :goto_1f

    .line 2356
    :sswitch_26
    if-ne p2, v0, :cond_2e

    const/16 v0, 0x5e9

    :goto_2a
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_2e
    const/16 v0, 0x5ea

    goto :goto_2a

    .line 2362
    :sswitch_31
    const/16 v0, 0x5f0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 2342
    nop

    :sswitch_data_38
    .sparse-switch
        0x3e9 -> :sswitch_5
        0x3fe -> :sswitch_1b
        0x5e8 -> :sswitch_26
        0x5f0 -> :sswitch_31
    .end sparse-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const v7, 0x1040013

    const v6, 0x1040009

    const v5, 0x104000a

    const v4, 0x1080027

    const/4 v3, 0x1

    .line 2372
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 2373
    packed-switch p1, :pswitch_data_36c

    .line 2809
    const/4 v0, 0x0

    :goto_29
    return-object v0

    .line 2375
    :pswitch_2a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_not_subscribed_donut_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_not_subscribed_donut_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$12;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$12;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$11;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$11;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_29

    .line 2399
    :pswitch_5c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_not_subscribed_no_telephony_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_not_subscribed_no_telephony_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$14;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$14;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$13;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$13;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_29

    .line 2423
    :pswitch_8e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_account_status_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_account_status_failed_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$16;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$16;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$15;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$15;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2447
    :pswitch_c1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_subscribe_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_subscribe_failed_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$18;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$18;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$17;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$17;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2471
    :pswitch_f4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_settings_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_settings_failed_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$20;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$20;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$19;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$19;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2495
    :pswitch_127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_verify_phone_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_verify_phone_failed_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$22;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$22;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$21;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$21;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2524
    :pswitch_15a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_verify_phone_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_verify_phone_failed_message_in_use:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$24;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$24;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$23;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$23;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2553
    :pswitch_18d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->carrier_provisioning_warning_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->carrier_provisioning_warning_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$27;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$27;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->carrier_provisioning_warning_exit_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$26;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$26;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->carrier_provisioning_warning_continue_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$25;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$25;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2586
    :pswitch_1d0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->check_carrier_provisioning_error_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->check_carrier_provisioning_error_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$30;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$30;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_check_carrier_provisioning_failed_dialog_exit_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$29;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$29;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_check_carrier_provisioning_failed_dialog_continue_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$28;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$28;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2621
    :pswitch_210
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->carrier_provision_confirmation_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->carrier_provision_confirmation_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$33;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$33;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$32;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$32;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$31;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$31;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2652
    :pswitch_24c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->carrier_provision_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->carrier_provision_failed_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$36;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$36;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_carrier_provision_failed_dialog_skip_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$35;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$35;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_carrier_provision_failed_dialog_try_again_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$34;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$34;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2698
    :pswitch_28c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_voicemail_configuration_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_voicemail_configuration_failed_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$39;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$39;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$38;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$38;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->button_skip:I

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$37;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$37;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2731
    :pswitch_2ca
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->no_background_data_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->no_background_data_description:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$42;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$42;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$41;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$41;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$40;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$40;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2765
    :pswitch_306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->add_account_unavailable_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->add_account_unavailable_description:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$44;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$44;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$43;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$43;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2787
    :pswitch_339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->add_account_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->add_account_failed_description:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$46;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$46;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$45;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$45;-><init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_29

    .line 2373
    :pswitch_data_36c
    .packed-switch 0x835
        :pswitch_2a
        :pswitch_8e
        :pswitch_c1
        :pswitch_f4
        :pswitch_127
        :pswitch_15a
        :pswitch_28c
        :pswitch_2ca
        :pswitch_306
        :pswitch_339
        :pswitch_18d
        :pswitch_1d0
        :pswitch_24c
        :pswitch_210
        :pswitch_5c
    .end packed-switch
.end method

.method public onNextClicked()V
    .registers 2

    .prologue
    .line 3303
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getNextAction()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 3304
    return-void
.end method

.method public declared-synchronized onPageActivityStart(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;Lcom/google/android/apps/googlevoice/DialogManager;)V
    .registers 14
    .parameter "activity"
    .parameter "dialogManager"

    .prologue
    const/4 v4, 0x1

    .line 891
    monitor-enter p0

    :try_start_2
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    .line 892
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const v2, 0x103006f

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogContext:Landroid/content/Context;

    .line 893
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    .line 896
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    packed-switch v0, :pswitch_data_2f0

    .line 1082
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_3f

    .line 1084
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 898
    :pswitch_33
    :try_start_33
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldCheckCarrierProvisioning()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 899
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3f

    goto :goto_31

    .line 891
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 901
    :cond_42
    const/16 v0, 0x3e9

    :try_start_44
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto :goto_31

    .line 906
    :pswitch_48
    const/16 v0, 0x3fc

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    .line 907
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    if-nez v0, :cond_75

    .line 908
    new-instance v0, Lcom/google/android/apps/googlevoice/AccountsAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/AccountsAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    .line 912
    :goto_5d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v4, :cond_6d

    .line 913
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    .line 915
    :cond_6d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->setSelectedAccount(Ljava/lang/String;)V

    goto :goto_31

    .line 910
    :cond_75
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->setAccounts([Ljava/lang/String;)V

    goto :goto_5d

    .line 919
    :pswitch_7d
    const/16 v0, 0x3fd

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto :goto_31

    .line 923
    :pswitch_83
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 925
    const/16 v0, 0x516

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto :goto_31

    .line 928
    :cond_93
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionable()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isShowCarrierProvisioningWarning()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isAlreadyCarrierProvisioned()Z

    move-result v0

    if-nez v0, :cond_b1

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisioningWarningDisplayed:Z

    if-nez v0, :cond_b1

    .line 932
    const/16 v0, 0x83f

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showDialog(I)V

    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisioningWarningDisplayed:Z

    .line 935
    :cond_b1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneFound:Z

    .line 936
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15b

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->hasForwardingPhones()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 937
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    .line 938
    const/16 v0, 0x2715

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextPage(I)V

    .line 939
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getLine1Number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 940
    .local v6, candidate:Ljava/lang/String;
    if-eqz v6, :cond_31

    .line 941
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v7

    .line 942
    .local v7, forwardingPhones:[Lcom/google/android/apps/googlevoice/core/Phone;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_df
    array-length v0, v7

    if-ge v8, v0, :cond_31

    .line 943
    aget-object v0, v7, v8

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 944
    aget-object v0, v7, v8

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    .line 945
    aget-object v0, v7, v8

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->getFormattedNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedForwardingNumber:Ljava/lang/String;

    .line 946
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedForwardingNumber:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setForwardingNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionable()Z

    move-result v0

    if-eqz v0, :cond_152

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isAlreadyCarrierProvisioned()Z

    move-result v0

    if-nez v0, :cond_152

    .line 948
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisioningVerifyNeeded()Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 949
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "carrier provisioning: verify needed"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 950
    const/16 v0, 0x2716

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextPage(I)V

    .line 965
    :goto_125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneFound:Z

    goto/16 :goto_31

    .line 952
    :cond_12a
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v1

    if-ne v0, v1, :cond_145

    .line 953
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "carrier provisioning: lite account to partner integrated"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 954
    sget-object v0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->USE_PARTNER_NUMBER:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    .line 956
    const/16 v0, 0x457

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto :goto_125

    .line 958
    :cond_145
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "carrier provisioning: verify not required"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 959
    const/16 v0, 0x271e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextPage(I)V

    goto :goto_125

    .line 963
    :cond_152
    const/16 v0, 0x44d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto :goto_125

    .line 942
    :cond_158
    add-int/lit8 v8, v8, 0x1

    goto :goto_df

    .line 971
    .end local v6           #candidate:Ljava/lang/String;
    .end local v7           #forwardingPhones:[Lcom/google/android/apps/googlevoice/core/Phone;
    .end local v8           #i:I
    :cond_15b
    const/16 v0, 0x424

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    .line 972
    const/16 v0, 0x2717

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextPage(I)V

    goto/16 :goto_31

    .line 977
    :pswitch_167
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    if-nez v0, :cond_196

    .line 978
    new-instance v0, Lcom/google/android/apps/googlevoice/PhonesAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/PhonesAdapter;-><init>(Landroid/content/Context;[Lcom/google/android/apps/googlevoice/core/Phone;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    .line 983
    :goto_17d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    if-nez v0, :cond_184

    .line 984
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedForwardingPhoneIndex:I

    .line 986
    :cond_184
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->setSelectedPhoneNumber(Ljava/lang/String;)V

    .line 987
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedForwardingPhoneIndex:I

    if-ltz v0, :cond_1a2

    .line 990
    const/16 v0, 0x44d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 981
    :cond_196
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->setPhones([Lcom/google/android/apps/googlevoice/core/Phone;)V

    goto :goto_17d

    .line 992
    :cond_1a2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 997
    :pswitch_1a8
    const/16 v0, 0x424

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 1001
    :pswitch_1af
    const/16 v0, 0x41f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 1005
    :pswitch_1b6
    const/16 v0, 0x448

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 1010
    :pswitch_1bd
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    if-eqz v0, :cond_21c

    .line 1011
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "SetupActivity MakingCallsPage: upgrading mode"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK_INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-ne v0, v1, :cond_1fd

    .line 1013
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 1029
    :cond_1d9
    :goto_1d9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->callingModesAdapter:Lcom/google/android/apps/googlevoice/CallingModesAdapter;

    if-nez v0, :cond_1ea

    .line 1030
    new-instance v0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/CallingModesAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->callingModesAdapter:Lcom/google/android/apps/googlevoice/CallingModesAdapter;

    .line 1033
    :cond_1ea
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    if-nez v0, :cond_1f2

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    if-eqz v0, :cond_26b

    .line 1034
    :cond_1f2
    const/16 v0, 0x579

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    .line 1035
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextPage(I)V

    goto/16 :goto_31

    .line 1015
    :cond_1fd
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetupActivity MakingCallsPage: mode remains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getModeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_1d9

    .line 1018
    :cond_21c
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    if-eqz v0, :cond_1d9

    .line 1019
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "SetupActivity MakingCallsPage: downgrading mode"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-ne v0, v1, :cond_239

    .line 1021
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK_INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    goto :goto_1d9

    .line 1022
    :cond_239
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ALL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    if-ne v0, v1, :cond_24b

    .line 1023
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    goto :goto_1d9

    .line 1025
    :cond_24b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetupActivity MakingCallsPage: mode remains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getModeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto/16 :goto_1d9

    .line 1036
    :cond_26b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_27a

    .line 1038
    const/16 v0, 0x516

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 1040
    :cond_27a
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupVoicemail()Z

    move-result v0

    if-eqz v0, :cond_287

    .line 1041
    const/16 v0, 0x516

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 1043
    :cond_287
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    .line 1044
    const/16 v0, 0x271a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextPage(I)V

    goto/16 :goto_31

    .line 1050
    :pswitch_293
    const/16 v0, 0x4b0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    .line 1051
    const/16 v0, 0x271b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextPage(I)V

    goto/16 :goto_31

    .line 1055
    :pswitch_29f
    const/16 v0, 0x515

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 1059
    :pswitch_2a6
    const/16 v0, 0x516

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 1063
    :pswitch_2ad
    const/16 v0, 0x8a1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showInlineProgress(IZLcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;)V

    .line 1064
    const/16 v0, 0x5e8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 1065
    const/16 v0, 0x6a4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 1069
    :pswitch_2c0
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

    if-nez v0, :cond_2e7

    .line 1070
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 1073
    .local v9, inflater:Landroid/view/LayoutInflater;
    new-instance v10, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxyImpl;

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxyImpl;-><init>(Landroid/content/res/Resources;)V

    .line 1074
    .local v10, resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;
    new-instance v0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

    invoke-direct {v0, v9, v10}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;-><init>(Landroid/view/LayoutInflater;Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

    .line 1078
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #resources:Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;
    :goto_2e0
    const/16 v0, 0x456

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    goto/16 :goto_31

    .line 1076
    :cond_2e7
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->setSelectedOption(Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;)V
    :try_end_2ee
    .catchall {:try_start_44 .. :try_end_2ee} :catchall_3f

    goto :goto_2e0

    .line 896
    nop

    :pswitch_data_2f0
    .packed-switch 0x2711
        :pswitch_33
        :pswitch_48
        :pswitch_7d
        :pswitch_83
        :pswitch_167
        :pswitch_1a8
        :pswitch_1af
        :pswitch_1b6
        :pswitch_1bd
        :pswitch_293
        :pswitch_29f
        :pswitch_2a6
        :pswitch_2ad
        :pswitch_2c0
    .end packed-switch
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2815
    packed-switch p1, :pswitch_data_1a

    .line 2824
    :cond_3
    :goto_3
    return-void

    :pswitch_4
    move-object v0, p2

    .line 2817
    check-cast v0, Landroid/app/AlertDialog;

    .line 2818
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 2819
    .local v1, positiveButton:Landroid/widget/Button;
    if-eqz v1, :cond_3

    .line 2820
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionRpc:Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;

    if-nez v2, :cond_17

    const/4 v2, 0x1

    :goto_13
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    :cond_17
    const/4 v2, 0x0

    goto :goto_13

    .line 2815
    nop

    :pswitch_data_1a
    .packed-switch 0x842
        :pswitch_4
    .end packed-switch
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 3
    .parameter "r"

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .registers 5
    .parameter "r"
    .parameter "uptimeMillis"

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 5
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public registerSmsSentReceiver()V
    .registers 5

    .prologue
    .line 3330
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.apps.googlevoice.SetupActivity.SMS_TOKEN_SENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3331
    return-void
.end method

.method public reloadCurrentPage()V
    .registers 2

    .prologue
    .line 1120
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    .line 1121
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3646
    return-void
.end method

.method public final removeMessages(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->removeMessages(I)V

    .line 3641
    return-void
.end method

.method public resetButtons()V
    .registers 15

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetting buttons for page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 694
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    packed-switch v0, :pswitch_data_178

    .line 799
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 801
    :goto_39
    return-void

    .line 698
    :pswitch_3a
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isDeviceSetup()Z

    move-result v0

    if-eqz v0, :cond_4f

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->button_skip:I

    .line 699
    .local v1, leftTitle:I
    :goto_42
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto :goto_39

    .line 698
    .end local v1           #leftTitle:I
    :cond_4f
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->button_exit:I

    goto :goto_42

    .line 706
    :pswitch_52
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->button_sign_in:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    if-eqz v0, :cond_65

    const/4 v10, 0x1

    :goto_60
    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto :goto_39

    :cond_65
    const/4 v10, 0x0

    goto :goto_60

    .line 712
    :pswitch_67
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->button_sign_in:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->isInputComplete()Z

    move-result v10

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto :goto_39

    .line 718
    :pswitch_7b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 719
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 721
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto :goto_39

    .line 725
    :cond_9a
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto :goto_39

    .line 730
    :cond_a9
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto :goto_39

    .line 737
    :pswitch_b8
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedForwardingPhoneIndex:I

    if-ltz v0, :cond_cc

    const/4 v10, 0x1

    :goto_c6
    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_39

    :cond_cc
    const/4 v10, 0x0

    goto :goto_c6

    .line 743
    :pswitch_ce
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_39

    .line 749
    :pswitch_de
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->isInputComplete()Z

    move-result v10

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_39

    .line 755
    :pswitch_f3
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_39

    .line 761
    :pswitch_103
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionable()Z

    move-result v0

    if-nez v0, :cond_121

    const/4 v4, 0x1

    .line 762
    .local v4, enablePreviousButton:Z
    :goto_10a
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    sget v7, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v0

    if-eqz v0, :cond_123

    const/4 v10, 0x1

    :goto_119
    move-object v2, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_39

    .line 761
    .end local v4           #enablePreviousButton:Z
    :cond_121
    const/4 v4, 0x0

    goto :goto_10a

    .line 762
    .restart local v4       #enablePreviousButton:Z
    :cond_123
    const/4 v10, 0x0

    goto :goto_119

    .line 769
    .end local v4           #enablePreviousButton:Z
    :pswitch_125
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_39

    .line 775
    :pswitch_135
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->button_configure_voicemail:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_39

    .line 781
    :pswitch_145
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_39

    .line 787
    :pswitch_155
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->button_configure_voicemail:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_39

    .line 793
    :pswitch_165
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->button_back:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->button_next:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionOptionSelected()Z

    move-result v13

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setButtons(IZZZIZZZ)V

    goto/16 :goto_39

    .line 694
    :pswitch_data_178
    .packed-switch 0x2711
        :pswitch_3a
        :pswitch_52
        :pswitch_67
        :pswitch_7b
        :pswitch_b8
        :pswitch_ce
        :pswitch_de
        :pswitch_f3
        :pswitch_103
        :pswitch_125
        :pswitch_135
        :pswitch_145
        :pswitch_155
        :pswitch_165
    .end packed-switch
.end method

.method public restoreStateFromBundle(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedState"

    .prologue
    .line 3473
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreStateFromBundle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 3474
    const-string v0, "setupHandler.phoneNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    .line 3475
    const-string v0, "setupHandler.formattedPhoneNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedPhoneNumber:Ljava/lang/String;

    .line 3476
    const-string v0, "setupHandler.voicemailNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicemailNumber:Ljava/lang/String;

    .line 3477
    const-string v0, "setupHandler.diversionNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionNumber:Ljava/lang/String;

    .line 3478
    const-string v0, "setupHandler.diversionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionCode:Ljava/lang/String;

    .line 3479
    const-string v0, "setupHandler.diversionType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    .line 3481
    const-string v0, "setupHandler.smsNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsNumber:Ljava/lang/String;

    .line 3482
    const-string v0, "setupHandler.smsToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsToken:Ljava/lang/String;

    .line 3483
    const-string v0, "setupHandler.confirmationAttemptsRemaining"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmationAttemptsRemaining:I

    .line 3485
    const-string v0, "setupHandler.createAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 3486
    const-string v0, "setupHandler.createAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    .line 3488
    :cond_7e
    const-string v0, "setupHandler.showCarrierProvisioningWarning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showCarrierProvisioningWarning:Z

    .line 3490
    const-string v0, "setupHandler.carrierProvisioningWarningDisplayed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisioningWarningDisplayed:Z

    .line 3492
    const-string v0, "setupHandler.alreadyCarrierProvisioned"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->alreadyCarrierProvisioned:Z

    .line 3494
    const-string v0, "setupHandler.carrierProvisioningVerifyNeeded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisioningVerifyNeeded:Z

    .line 3496
    const-string v0, "setupHandler.carrierProvisionable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 3497
    const-string v0, "setupHandler.carrierProvisionable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    .line 3499
    :cond_b2
    const-string v0, "setupHandler.checkCarrierProvisioningWaitAttemptsRemaining"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    .line 3501
    const-string v0, "setupHandler.activeAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 3502
    const-string v0, "setupHandler.activeAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activeAccount:Ljava/lang/Boolean;

    .line 3504
    :cond_ce
    const-string v0, "setupHandler.pin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->pin:Ljava/lang/String;

    .line 3506
    const-string v0, "setupHandler.currentPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    .line 3507
    const-string v0, "setupHandler.nextAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->nextAction:I

    .line 3508
    const-string v0, "setupHandler.nextPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->nextPage:I

    .line 3510
    const-string v0, "setupHandler.googleLoginServiceAccounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    .line 3512
    const-string v0, "setupHandler.account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    .line 3513
    const-string v0, "setupHandler.password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->password:Ljava/lang/String;

    .line 3514
    const-string v0, "setupHandler.forwardingNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    .line 3515
    const-string v0, "setupHandler.formattedForwardingNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedForwardingNumber:Ljava/lang/String;

    .line 3518
    const-string v0, "setupHandler.parentIsSelf"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->parentIsSelf:Z

    .line 3519
    const-string v0, "setupHandler.upgrading"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    .line 3520
    const-string v0, "setupHandler.downgrading"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    .line 3521
    const-string v0, "setupHandler.configuringVoicemail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->configuringVoicemail:Z

    .line 3522
    const-string v0, "setupHandler.selectedForwardingPhoneIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedForwardingPhoneIndex:I

    .line 3524
    const-string v0, "setupHandler.phoneFound"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneFound:Z

    .line 3526
    const-string v0, "setupHandler.previousPages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->previousPages:Ljava/util/ArrayList;

    .line 3528
    const-string v0, "setupHandler.resultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resultCode:I

    .line 3529
    return-void
.end method

.method public saveStateToBundle(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedState"

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveStateToBundle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 3417
    const-string v0, "setupHandler.phoneNumber"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3418
    const-string v0, "setupHandler.formattedPhoneNumber"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    const-string v0, "setupHandler.voicemailNumber"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    const-string v0, "setupHandler.diversionNumber"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3421
    const-string v0, "setupHandler.diversionCode"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3422
    const-string v0, "setupHandler.diversionType"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3423
    const-string v0, "setupHandler.smsNumber"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3424
    const-string v0, "setupHandler.smsToken"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    const-string v0, "setupHandler.confirmationAttemptsRemaining"

    iget v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmationAttemptsRemaining:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3427
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    if-eqz v0, :cond_70

    .line 3428
    const-string v0, "setupHandler.createAccount"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3430
    :cond_70
    const-string v0, "setupHandler.showCarrierProvisioningWarning"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showCarrierProvisioningWarning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3432
    const-string v0, "setupHandler.carrierProvisioningWarningDisplayed"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisioningWarningDisplayed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3434
    const-string v0, "setupHandler.alreadyCarrierProvisioned"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->alreadyCarrierProvisioned:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3436
    const-string v0, "setupHandler.carrierProvisioningVerifyNeeded"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisioningVerifyNeeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3438
    const-string v0, "setupHandler.checkCarrierProvisioningWaitAttemptsRemaining"

    iget v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->checkCarrierProvisioningWaitAttemptsRemaining:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3440
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->isCarrierProvisionableUnknown()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 3441
    const-string v0, "setupHandler.carrierProvisionable"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3443
    :cond_a4
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activeAccount:Ljava/lang/Boolean;

    if-eqz v0, :cond_b3

    .line 3444
    const-string v0, "setupHandler.activeAccount"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activeAccount:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3446
    :cond_b3
    const-string v0, "setupHandler.pin"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->pin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3448
    const-string v0, "setupHandler.currentPage"

    iget v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3449
    const-string v0, "setupHandler.nextAction"

    iget v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->nextAction:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3450
    const-string v0, "setupHandler.nextPage"

    iget v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->nextPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3452
    const-string v0, "setupHandler.googleLoginServiceAccounts"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3454
    const-string v0, "setupHandler.account"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    const-string v0, "setupHandler.password"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3456
    const-string v0, "setupHandler.forwardingNumber"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    const-string v0, "setupHandler.formattedForwardingNumber"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedForwardingNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    const-string v0, "setupHandler.parentIsSelf"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->parentIsSelf:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3460
    const-string v0, "setupHandler.upgrading"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3461
    const-string v0, "setupHandler.downgrading"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3462
    const-string v0, "setupHandler.configuringVoicemail"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->configuringVoicemail:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3463
    const-string v0, "setupHandler.selectedForwardingPhoneIndex"

    iget v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedForwardingPhoneIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3465
    const-string v0, "setupHandler.phoneFound"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneFound:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3467
    const-string v0, "setupHandler.previousPages"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->previousPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3469
    const-string v0, "setupHandler.resultCode"

    iget v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resultCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3470
    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .registers 3
    .parameter "what"

    .prologue
    .line 3588
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public sendEmptyMessageDelayed(IJ)Z
    .registers 5
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 3594
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public sendMessage(Landroid/os/Message;)Z
    .registers 3
    .parameter "message"

    .prologue
    .line 3599
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)Z
    .registers 5
    .parameter "message"
    .parameter "delayMs"

    .prologue
    .line 3604
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public sendToTarget(Landroid/os/Message;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendToTarget(Landroid/os/Message;)V

    .line 3651
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 2930
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    .line 2931
    return-void
.end method

.method public setAccountsAdapter(Lcom/google/android/apps/googlevoice/AccountsAdapter;)V
    .registers 2
    .parameter "accountsAdapter"

    .prologue
    .line 3127
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    .line 3128
    return-void
.end method

.method public setActiveAccount(Z)V
    .registers 3
    .parameter "activeAccount"

    .prologue
    .line 3245
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activeAccount:Ljava/lang/Boolean;

    .line 3246
    return-void
.end method

.method public setAlreadyCarrierProvisioned(Z)V
    .registers 2
    .parameter "alreadyCarrierProvisioned"

    .prologue
    .line 3204
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->alreadyCarrierProvisioned:Z

    .line 3205
    return-void
.end method

.method public setCallingModesAdapter(Lcom/google/android/apps/googlevoice/CallingModesAdapter;)V
    .registers 2
    .parameter "callingModesAdapter"

    .prologue
    .line 3104
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->callingModesAdapter:Lcom/google/android/apps/googlevoice/CallingModesAdapter;

    .line 3105
    return-void
.end method

.method public setCarrierProvisionAdapter(Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;)V
    .registers 2
    .parameter "carrierProvisionAdapter"

    .prologue
    .line 3065
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

    .line 3066
    return-void
.end method

.method public setCarrierProvisionable(Z)V
    .registers 3
    .parameter "carrierProvisionable"

    .prologue
    .line 3224
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    .line 3225
    return-void
.end method

.method public setCarrierProvisioningVerifyNeeded(Z)V
    .registers 2
    .parameter "carrierProvisioningVerifyNeeded"

    .prologue
    .line 3212
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisioningVerifyNeeded:Z

    .line 3213
    return-void
.end method

.method public setConfiguringVoicemail(Z)V
    .registers 2
    .parameter "configuringVoicemail"

    .prologue
    .line 2978
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->configuringVoicemail:Z

    .line 2979
    return-void
.end method

.method public setCreateAccount(Ljava/lang/Boolean;)V
    .registers 2
    .parameter "createAccount"

    .prologue
    .line 2904
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    .line 2905
    return-void
.end method

.method public setCurrentPage(I)V
    .registers 2
    .parameter "currentPage"

    .prologue
    .line 3253
    iput p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    .line 3254
    return-void
.end method

.method public setDeviceSetup(Z)V
    .registers 2
    .parameter "deviceSetup"

    .prologue
    .line 3177
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->deviceSetup:Z

    .line 3178
    return-void
.end method

.method public setDiversionCode(Ljava/lang/String;)V
    .registers 2
    .parameter "diversionCode"

    .prologue
    .line 2863
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionCode:Ljava/lang/String;

    .line 2864
    return-void
.end method

.method public setDiversionNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "diversionNumber"

    .prologue
    .line 2855
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionNumber:Ljava/lang/String;

    .line 2856
    return-void
.end method

.method public setDiversionType(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;)V
    .registers 2
    .parameter "diversionType"

    .prologue
    .line 2872
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    .line 2873
    return-void
.end method

.method public setDowngrading(Z)V
    .registers 2
    .parameter "downgrading"

    .prologue
    .line 2970
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    .line 2971
    return-void
.end method

.method public setFinished(Z)V
    .registers 2
    .parameter "finished"

    .prologue
    .line 3298
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->finished:Z

    .line 3299
    return-void
.end method

.method public setFormattedForwardingNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "formattedForwardingNumber"

    .prologue
    .line 2954
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedForwardingNumber:Ljava/lang/String;

    .line 2955
    return-void
.end method

.method public setFormattedPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "formattedPhoneNumber"

    .prologue
    .line 2839
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedPhoneNumber:Ljava/lang/String;

    .line 2840
    return-void
.end method

.method public setForwardingNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "forwardingNumber"

    .prologue
    .line 2946
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    .line 2947
    return-void
.end method

.method public setGoogleLoginServiceAccounts([Ljava/lang/String;)V
    .registers 2
    .parameter "googleLoginServiceAccounts"

    .prologue
    .line 2922
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->googleLoginServiceAccounts:[Ljava/lang/String;

    .line 2923
    return-void
.end method

.method public setMessageSender(Lcom/google/android/apps/googlevoice/activity/MessageSender;)V
    .registers 2
    .parameter "messageSender"

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 446
    return-void
.end method

.method public setNextAction(I)V
    .registers 5
    .parameter "nextAction"

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting next action to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 3262
    iput p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->nextAction:I

    .line 3263
    return-void
.end method

.method public setNextPage(I)V
    .registers 5
    .parameter "nextPage"

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting next page to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 3271
    iput p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->nextPage:I

    .line 3272
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "password"

    .prologue
    .line 2938
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->password:Ljava/lang/String;

    .line 2939
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "phoneNumber"

    .prologue
    .line 2831
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phoneNumber:Ljava/lang/String;

    .line 2832
    return-void
.end method

.method public setPhones([Lcom/google/android/apps/googlevoice/core/Phone;)V
    .registers 2
    .parameter "phones"

    .prologue
    .line 2880
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phones:[Lcom/google/android/apps/googlevoice/core/Phone;

    .line 2881
    return-void
.end method

.method public setPhonesAdapter(Lcom/google/android/apps/googlevoice/PhonesAdapter;)V
    .registers 2
    .parameter "phonesAdapter"

    .prologue
    .line 2995
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    .line 2996
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .registers 2
    .parameter "pin"

    .prologue
    .line 2914
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->pin:Ljava/lang/String;

    .line 2915
    return-void
.end method

.method public setResultCode(I)V
    .registers 2
    .parameter "resultCode"

    .prologue
    .line 3280
    iput p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resultCode:I

    .line 3281
    return-void
.end method

.method public setResultExtra(Landroid/content/Intent;)V
    .registers 2
    .parameter "resultExtra"

    .prologue
    .line 3289
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->resultExtra:Landroid/content/Intent;

    .line 3290
    return-void
.end method

.method setSelectedCarrierProvisioningOption(Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;)V
    .registers 2
    .parameter "selectedCarrierProvisionOption"

    .prologue
    .line 3095
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    .line 3096
    return-void
.end method

.method public setSelectedForwardingPhoneIndex(I)V
    .registers 2
    .parameter "selectedForwardingPhoneIndex"

    .prologue
    .line 2986
    iput p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedForwardingPhoneIndex:I

    .line 2987
    return-void
.end method

.method public setShowCarrierProvisioningWarning(Z)V
    .registers 2
    .parameter "showCarrierProvisioningWarning"

    .prologue
    .line 3185
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->showCarrierProvisioningWarning:Z

    .line 3186
    return-void
.end method

.method public setSignInPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 3353
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->password:Ljava/lang/String;

    .line 3354
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSignInRightButton()V

    .line 3355
    return-void
.end method

.method public setSignInUsername(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 3343
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setAccount(Ljava/lang/String;)V

    .line 3344
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->updateSignInRightButton()V

    .line 3345
    return-void
.end method

.method public setSmsNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "smsNumber"

    .prologue
    .line 2888
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsNumber:Ljava/lang/String;

    .line 2889
    return-void
.end method

.method public setSmsToken(Ljava/lang/String;)V
    .registers 2
    .parameter "smsToken"

    .prologue
    .line 2896
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->smsToken:Ljava/lang/String;

    .line 2897
    return-void
.end method

.method public setUpgrading(Z)V
    .registers 2
    .parameter "upgrading"

    .prologue
    .line 2962
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    .line 2963
    return-void
.end method

.method public setVoicemailNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "voicemailNumber"

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicemailNumber:Ljava/lang/String;

    .line 2848
    return-void
.end method

.method public startFlow(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    const-string v0, "com.google.android.apps.googlevoice.PARENT_IS_SELF"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->parentIsSelf:Z

    .line 451
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v0, v3, :cond_3e

    .line 454
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clear()V

    .line 455
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    .line 464
    :goto_1d
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    if-eqz v0, :cond_80

    .line 465
    :cond_25
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupMakingCalls()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 466
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 467
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->shouldSkipSetupVoicemail()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 468
    const/16 v0, 0x516

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 478
    :goto_3d
    return-void

    .line 458
    :cond_3e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v3

    if-le v0, v3, :cond_70

    move v0, v1

    :goto_55
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->upgrading:Z

    .line 460
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v3

    if-ge v0, v3, :cond_72

    :goto_6d
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->downgrading:Z

    goto :goto_1d

    :cond_70
    move v0, v2

    .line 458
    goto :goto_55

    :cond_72
    move v1, v2

    .line 460
    goto :goto_6d

    .line 470
    :cond_74
    const/16 v0, 0x271a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto :goto_3d

    .line 473
    :cond_7a
    const/16 v0, 0x2719

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto :goto_3d

    .line 476
    :cond_80
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto :goto_3d
.end method

.method public unregisterSmsSentReceiver()V
    .registers 3

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->activityContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3335
    return-void
.end method
